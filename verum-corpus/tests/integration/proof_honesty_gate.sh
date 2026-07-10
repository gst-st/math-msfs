#!/usr/bin/env bash
# =============================================================================
# proof_honesty_gate.sh — corpus-side CI gate against proof-honesty regression
# =============================================================================
#
# Runs `verum audit --proof-honesty --format json` and compares the totals +
# by-lineage breakdown against `tests/proof_honesty_baseline.json`.
#
# REGRESSION semantics (the CI failure cases):
#   1. Any new theorem-trivial-true row (proof body without any tactic step).
#   2. Any new theorem-no-proof-body row (theorem declared without `proof {}`).
#   3. theorem_multi_step counter dropped below baseline (somebody converted
#      an honest @theorem back to @axiom or trivialised the proof body).
#   4. theorem_axiom_only counter dropped below baseline (similar).
#   5. axiom_placeholder counter rose above baseline (theorem stripped to axiom).
#   6. Any per-lineage (msfs / diakrisis) version of the above.
#
# A green run means: no regression. Increases in theorem-* counts and
# decreases in axiom-placeholder are always welcome — the baseline can
# be re-frozen via `make refresh-honesty-baseline` once those gains are
# stable.
# =============================================================================

set -euo pipefail

CORPUS_DIR="$(cd "$(dirname "$0")/../.." && pwd)"
VERUM_BIN="${VERUM_BIN:-verum}"
BASELINE="$CORPUS_DIR/tests/proof_honesty_baseline.json"
LIVE_REPORT="$(mktemp -t honesty-live.XXXXXX.json)"
trap 'rm -f "$LIVE_REPORT"' EXIT

cd "$CORPUS_DIR"

echo "==> Running: $VERUM_BIN audit --proof-honesty --format json"
"$VERUM_BIN" audit --proof-honesty --format json > "$LIVE_REPORT"

if [[ ! -f "$BASELINE" ]]; then
    echo "ERROR: baseline file missing: $BASELINE"
    exit 1
fi

python3 - "$BASELINE" "$LIVE_REPORT" <<'PYEOF'
import json
import sys

baseline_path, live_path = sys.argv[1], sys.argv[2]
b = json.load(open(baseline_path))
l = json.load(open(live_path))

failures = []

# Monotone-up counters (must not drop below baseline_min).
for key, expected in b.get("totals_min", {}).items():
    if key.startswith("_"):
        continue
    live = l.get("totals", {}).get(key, 0)
    if live < expected:
        failures.append(f"REGRESSION: totals[{key}]={live} < baseline_min={expected}")

# Monotone-down counters (must not rise above baseline_max).
for key, expected in b.get("totals_max", {}).items():
    if key.startswith("_"):
        continue
    live = l.get("totals", {}).get(key, 0)
    if live > expected:
        failures.append(f"REGRESSION: totals[{key}]={live} > baseline_max={expected}")

# Per-lineage (msfs / diakrisis).
for lineage, mins in b.get("by_lineage_min", {}).items():
    for key, expected in mins.items():
        live = l.get("by_lineage", {}).get(lineage, {}).get(key, 0)
        if live < expected:
            failures.append(f"REGRESSION: by_lineage[{lineage}][{key}]={live} < baseline_min={expected}")

for lineage, maxes in b.get("by_lineage_max", {}).items():
    for key, expected in maxes.items():
        live = l.get("by_lineage", {}).get(lineage, {}).get(key, 0)
        if live > expected:
            failures.append(f"REGRESSION: by_lineage[{lineage}][{key}]={live} > baseline_max={expected}")

if failures:
    print("\n".join(failures), file=sys.stderr)
    print(f"\n{len(failures)} regression(s) detected against baseline.", file=sys.stderr)
    sys.exit(1)

# ---------------------------------------------------------------------------
# Tautology gate (corpus-side, schema-v3).
# The v2 CLI classifier split axiom-only theorems into structural vs
# tautological; the current CLI emits only the combined counter. The
# forbidden classes are enforced here textually instead, so the gate
# does not depend on CLI classifier churn:
#   (T1) any `axiom` whose ensures-expression is literally `true`;
#   (T2) any `theorem` whose ensures-expression is literally `true`;
#   (T3) any theorem whose proof body's ONLY apply-steps target
#        (T1)-axioms — an axiom-only theorem is honest only if the
#        axiom it discharges through carries real ensures content.
# ---------------------------------------------------------------------------
import pathlib, re

corpus = pathlib.Path(".")
decl_re = re.compile(
    r"public\s+(axiom|theorem)\s+([A-Za-z0-9_]+)\s*\(",
)

taut_axioms, taut_theorems, decls = set(), [], {}
for vr in sorted(corpus.glob("src/**/*.vr")):
    text = vr.read_text()
    for m in decl_re.finditer(text):
        kind, name = m.group(1), m.group(2)
        # Slice from the declaration to its terminator: axioms end at the
        # first `;` after the ensures clause; theorems at the end of the
        # proof block. A generous window is fine — we only inspect the
        # ensures expression and the apply targets inside it.
        window = text[m.start(): m.start() + 4000]
        em = re.search(r"\bensures\b(.*?)(?:\bproof\b|;)", window, re.S)
        ensures_expr = re.sub(r"\s+", " ", em.group(1)).strip() if em else ""
        applies = re.findall(r"\bapply\s+([A-Za-z0-9_]+)\s*\(", window)
        decls[name] = (kind, ensures_expr, applies, str(vr))
        if ensures_expr == "true":
            if kind == "axiom":
                taut_axioms.add(name)
            else:
                taut_theorems.append((name, str(vr), "theorem ensures true"))

for name, (kind, _e, applies, path) in decls.items():
    if kind == "theorem" and applies and all(a in taut_axioms for a in applies):
        taut_theorems.append((name, path, "all apply-steps target ensures-true axioms"))

taut_failures = [f"TAUTOLOGY: axiom `{a}` has `ensures true` ({decls[a][3]})" for a in sorted(taut_axioms)]
taut_failures += [f"TAUTOLOGY: theorem `{n}` — {why} ({p})" for n, p, why in taut_theorems]

if taut_failures:
    print("\n".join(taut_failures), file=sys.stderr)
    print(f"\n{len(taut_failures)} tautology violation(s) — forbidden class.", file=sys.stderr)
    sys.exit(1)

print(f"Tautology gate: PASS ({len(decls)} declarations scanned, 0 ensures-true forms)")

# Report any improvements (informational, never fails the gate).
gains = []
for key, expected in b.get("totals_min", {}).items():
    if key.startswith("_"):
        continue
    live = l.get("totals", {}).get(key, 0)
    if live > expected:
        gains.append(f"  + totals[{key}]: baseline {expected} -> live {live} (UP)")
for key, expected in b.get("totals_max", {}).items():
    if key.startswith("_"):
        continue
    live = l.get("totals", {}).get(key, 0)
    if live < expected:
        gains.append(f"  + totals[{key}]: baseline {expected} -> live {live} (DOWN)")

if gains:
    print("Gains over baseline (consider refreshing baseline):")
    print("\n".join(gains))
else:
    print("Baseline holds exactly.")

print("\nproof-honesty gate: PASS")
PYEOF
