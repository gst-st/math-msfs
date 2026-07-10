-- Exported by `verum export --to lean`.
-- theorem proofs lowered via LeanProofReplay
-- when SmtCertificates are loaded; otherwise sorry scaffold.

-- note: framework lineage `msfs` has no Lean-library mapping yet; emitted as opaque axiom.

-- ==== framework: msfs ====
-- axiom — msfs — MSFS Lemma A.1 — Kelly 1982 §1-§2 (2-categorical infrastructure) :: src/theorems/msfs/categorical_preliminaries.vr
axiom msfs_lemma_A_1_kelly_2_categorical : Prop

-- axiom — msfs — MSFS Lemma A.2 — Lurie HTT 2009 (∞-categorical infrastructure) :: src/theorems/msfs/categorical_preliminaries.vr
axiom msfs_lemma_A_2_lurie_htt : Prop

-- axiom — msfs — MSFS Lemma A.3 — Riehl–Verity 2022 (synthetic (∞,1)-category theory) :: src/theorems/msfs/categorical_preliminaries.vr
axiom msfs_lemma_A_3_riehl_verity : Prop

-- axiom — msfs — MSFS Lemma A.4 — Pronk 1996 Theorem 21 (bicategory of fractions) :: src/theorems/msfs/categorical_preliminaries.vr
axiom msfs_lemma_A_4_pronk_bicat_fractions : Prop

-- axiom — msfs — MSFS Lemma A.5 — Lawvere 1969 (fixed-point theorem, 2-categorical) :: src/theorems/msfs/categorical_preliminaries.vr
axiom msfs_lemma_A_5_lawvere_fp : Prop

-- axiom — msfs — MSFS Lemma A.6 — Whitehead-type criterion for (∞,∞)-equivalences :: src/theorems/msfs/categorical_preliminaries.vr
axiom msfs_lemma_A_6_whitehead : Prop

-- axiom — msfs — MSFS Theorem A.7 — Bergner–Lurie (∞,∞)-stabilization (CRITICAL forward ref) :: src/theorems/msfs/categorical_preliminaries.vr
axiom msfs_theorem_A_7_bergner_lurie_stabilization : Prop

-- axiom — msfs — MSFS Lemma A.8 — Adámek–Rosický 1994 (accessible-categories infrastructure) :: src/theorems/msfs/categorical_preliminaries.vr
axiom msfs_lemma_A_8_adamek_rosicky : Prop

-- theorem — msfs — MSFS Appendix A — full categorical preliminaries aggregator :: src/theorems/msfs/categorical_preliminaries.vr
def msfs_appendix_A_categorical_preliminaries_full : Prop := sorry

-- axiom — msfs — MSFS §11.1 reduction — classical no-go rows (7) refine universal id_X template into row-specific witness :: src/theorems/msfs/no_go_subsumption.vr
axiom msfs_theorem_11_1_subsumption_reduction : Prop

-- theorem — msfs — MSFS Theorem 11.1 — subsumption of 7 classical no-go results under AFN-T α :: src/theorems/msfs/no_go_subsumption.vr
def msfs_theorem_11_1_subsumption : Prop := sorry

-- axiom — msfs — MSFS Theorem 11.1 — subsumption anchor (catalogue alias) :: src/theorems/msfs/no_go_subsumption.vr
axiom msfs_theorem_11_1_subsumption_anchor : Prop

-- theorem — msfs — MSFS Theorem 5.1 — AFN-T α-part: ¬∃ X. (F_S) ∧ (Π_4) ∧ (Π_3-max) :: src/theorems/msfs/afnt_alpha.vr
def msfs_theorem_5_1_afnt_alpha : Prop := sorry

-- theorem — msfs — MSFS Corollary 5.2 — L_Abs == ∅ :: src/theorems/msfs/afnt_alpha.vr
def msfs_corollary_5_2_l_abs_empty : Prop := msfs_theorem_5_1_afnt_alpha

-- theorem — msfs — MSFS Definition 9.1 — Meta_Cls – :: src/theorems/msfs/meta_classification.vr
def msfs_definition_9_1_meta_cls : Prop := sorry

-- theorem — msfs — MSFS Definition 9.2 — Meta_Cls^⊤ (Max-1)..(Max-4) :: src/theorems/msfs/meta_classification.vr
def msfs_definition_9_2_meta_cls_top : Prop := sorry

-- theorem — msfs — MSFS Theorem 9.3 — Meta-Categoricity (canonical (∞,∞)-equivalence) :: src/theorems/msfs/meta_classification.vr
def msfs_theorem_9_3_meta_categoricity : Prop := sorry

-- theorem — msfs — MSFS Theorem 9.4 — ≥3 pairwise non-2-equivalent meta-structures :: src/theorems/msfs/meta_classification.vr
def msfs_theorem_9_4_structural_multiplicity : Prop := sorry

-- theorem — msfs — MSFS Corollary 9.5 — L_Cls is structurally plural :: src/theorems/msfs/meta_classification.vr
def msfs_corollary_9_5_plurality : Prop := sorry

-- theorem — msfs — MSFS Theorem 9.6 (a)+(b) — Meta-classification stabilisation :: src/theorems/msfs/meta_classification.vr
def msfs_theorem_9_6_meta_classification_stabilization : Prop := sorry

-- axiom — msfs — MSFS §9.6 (c) reduction — meta-iteration depth k ≥ 1 stabilises in (∞,∞)-Cat via Theorem 9.6 (a)+(b) :: src/theorems/msfs/meta_classification.vr
axiom msfs_theorem_9_6c_meta_iteration_reduction : Prop

-- theorem — msfs — MSFS Theorem 9.6 (c) — No L_Abs escalation via meta-iteration (reduces to Theorem 5.1) :: src/theorems/msfs/meta_classification.vr
def msfs_theorem_9_6c_no_l_abs_escalation : Prop := sorry

-- axiom — msfs — MSFS §8.1 reduction — universe polymorphism Morita-reduces to S_S^global section :: src/theorems/msfs/bypass_paths.vr
axiom msfs_theorem_8_1_universe_reduction : Prop

-- axiom — msfs — MSFS §8.2 reduction — reflective tower bounded by Con(S) + κ_inacc, no new axis :: src/theorems/msfs/bypass_paths.vr
axiom msfs_theorem_8_2_reflective_tower_reduction : Prop

-- axiom — msfs — MSFS §8.8 reduction — intensional fibres gauge-collapse via Theorem 8.7's slice-locality :: src/theorems/msfs/bypass_paths.vr
axiom msfs_corollary_8_8_intensional_reduction : Prop

-- theorem — msfs — MSFS Theorem 8.1 — universe-polymorphism Morita-reduces to S_S^global :: src/theorems/msfs/bypass_paths.vr
def msfs_theorem_8_1_universe_polymorphism : Prop := sorry

-- theorem — msfs — MSFS Theorem 8.2 — reflective tower bounded by Con(S) + κ_inacc :: src/theorems/msfs/bypass_paths.vr
def msfs_theorem_8_2_reflective_tower : Prop := sorry

-- axiom — msfs — MSFS Definition 8.3 — display class (D1)-(D4) :: src/theorems/msfs/bypass_paths.vr
axiom msfs_definition_8_3_display_class : Prop

-- axiom — msfs — MSFS Definition 8.4 — display 2-category triple :: src/theorems/msfs/bypass_paths.vr
axiom msfs_definition_8_4_display_2_category : Prop

-- axiom — msfs — MSFS Definition 8.5 — S_int 2-category structure :: src/theorems/msfs/bypass_paths.vr
axiom msfs_definition_8_5_s_int : Prop

-- axiom — msfs — MSFS Theorem 8.6 — I existence with (I-1)..(I-4) :: src/theorems/msfs/bypass_paths.vr
axiom msfs_theorem_8_6_I_existence : Prop

-- axiom — msfs — MSFS Theorem 8.7 — slice-locality of I :: src/theorems/msfs/bypass_paths.vr
axiom msfs_theorem_8_7_slice_locality : Prop

-- theorem — msfs — MSFS Corollary 8.8 — intensional refinement adds no new axis to AFN-T :: src/theorems/msfs/bypass_paths.vr
def msfs_corollary_8_8_intensional_no_new_axis : Prop := sorry

-- axiom — msfs — MSFS Proposition grading — the intensional grading is structural (a)+(b)+(c) :: src/theorems/msfs/bypass_paths.vr
axiom msfs_proposition_grading_structural : Prop

-- theorem — msfs — MSFS Corollary grade-collapse — extensionality is grade-blindness :: src/theorems/msfs/bypass_paths.vr
def msfs_corollary_grade_collapse : Prop := msfs_proposition_grading_structural

-- theorem — msfs — MSFS Proposition 2.2 (iv) — L_Abs == ∅ :: src/theorems/msfs/strata.vr
def msfs_proposition_2_2_iv_l_abs_empty : Prop := msfs_corollary_5_2_l_abs_empty

-- theorem — msfs — MSFS Proposition 2.3 corollary — Cls(L_Fnd) ≠ L_Abs :: src/theorems/msfs/strata.vr
def msfs_proposition_2_3_corollary_cls_not_in_l_abs : Prop := msfs_proposition_2_2_iv_l_abs_empty

-- theorem — msfs — MSFS Proposition 2.2 (iii) — L_Cls_top ⊋ L_Abs (vacuous form) :: src/theorems/msfs/strata.vr
def msfs_proposition_2_2_iii_clsmax_strict_above_abs : Prop := msfs_proposition_2_2_iv_l_abs_empty

-- theorem — msfs — MSFS Proposition 2.2 (iii) — L_Fnd ⊋ L_Cls :: src/theorems/msfs/strata.vr
def msfs_proposition_2_2_iii_fnd_strict_above_cls : Prop := sorry -- via msfs_proper_inclusion_fnd_cls (forward reference at statement level)

-- theorem — msfs — MSFS Proposition 2.2 (iii) — L_Cls ⊋ L_Cls_top :: src/theorems/msfs/strata.vr
def msfs_proposition_2_2_iii_cls_strict_above_clsmax : Prop := sorry -- via msfs_proper_inclusion_cls_clsmax (forward reference at statement level)

-- theorem — msfs — MSFS Proposition 2.2 (iii) — L_Cls_top ⊋ L_Abs (typed-witness form) :: src/theorems/msfs/strata.vr
def msfs_proposition_2_2_iii_clsmax_strict_above_abs_witness : Prop := sorry -- via msfs_proper_inclusion_clsmax_abs (forward reference at statement level)

-- axiom — msfs — MSFS Definition 10.1 — 2-category cE + α ⊣ ε adjoint pair :: src/theorems/msfs/ac_oc_duality.vr
axiom msfs_definition_10_1_E_category : Prop

-- axiom — msfs — MSFS Definition 10.2 — class cS_S^cE :: src/theorems/msfs/ac_oc_duality.vr
axiom msfs_definition_10_2_S_S_E : Prop

-- axiom — msfs — MSFS Lemma 10.3 — enactment syntax-semantics :: src/theorems/msfs/ac_oc_duality.vr
axiom msfs_lemma_10_3_enactment_syntax_semantics : Prop

-- theorem — msfs — MSFS Theorem 10.4 — AC/OC Morita Duality :: src/theorems/msfs/ac_oc_duality.vr
def msfs_theorem_10_4_ac_oc_morita_duality : Prop := sorry

-- theorem — msfs — MSFS Corollary 10.5 — Con(F ∪ E) = Con(F) = Con(ZFC + 2-inacc) :: src/theorems/msfs/ac_oc_duality.vr
def msfs_corollary_10_5_conservativity : Prop := sorry

-- theorem — msfs — MSFS Theorem 10.7 — Dual Boundary Lemma (Diakrisis 109.T) — structural @theorem :: src/theorems/msfs/ac_oc_duality.vr
def msfs_theorem_10_7_dual_boundary_lemma : Prop := sorry

-- theorem — msfs — MSFS Corollary 10.8 — L_Abs^cE = ∅ :: src/theorems/msfs/ac_oc_duality.vr
def msfs_corollary_10_8_l_abs_E_empty : Prop := sorry

-- theorem — msfs — MSFS Theorem 10.9 — Dual five-axis absoluteness :: src/theorems/msfs/ac_oc_duality.vr
def msfs_theorem_10_9_dual_five_axis : Prop := sorry

-- axiom — msfs — MSFS §7.1 reduction — horizontal axis: L_Abs candidacy is R-S-uniform (Lemma 3.4 + id_X template ∈ (R1)-(R5)) :: src/theorems/msfs/five_axis.vr
axiom msfs_theorem_7_1_horizontal_reduction : Prop

-- axiom — msfs — MSFS §7.2 reduction — vertical axis: L_Abs candidacy is n-uniform (Lambek–Scott levelwise + Barwick–Schommer-Pries at n=∞) :: src/theorems/msfs/five_axis.vr
axiom msfs_theorem_7_2_vertical_reduction : Prop

-- axiom — msfs — MSFS §7.3 reduction — meta-vertical axis: meta-stratum collapses via (∞,∞+1)-Cat = (∞,∞)-Cat (Theorem A.7) :: src/theorems/msfs/five_axis.vr
axiom msfs_theorem_7_3_meta_vertical_reduction : Prop

-- axiom — msfs — MSFS §7.4 reduction — lateral axis: alt-orderings Morita-reduce to (∞,n)-Cat :: src/theorems/msfs/five_axis.vr
axiom msfs_theorem_7_4_lateral_reduction : Prop

-- axiom — msfs — MSFS §7.6 reduction — completeness axis: any LS-variation reduces to one of axes 7.1-7.4 :: src/theorems/msfs/five_axis.vr
axiom msfs_theorem_7_6_completeness_reduction : Prop

-- theorem — msfs — MSFS Theorem 7.1 — horizontal axis: AFN-T uniform over R-S :: src/theorems/msfs/five_axis.vr
def msfs_theorem_7_1_horizontal : Prop := sorry

-- theorem — msfs — MSFS Theorem 7.2 — vertical axis: AFN-T uniform over n ∈ ℕ ∪ {∞} :: src/theorems/msfs/five_axis.vr
def msfs_theorem_7_2_vertical : Prop := sorry

-- theorem — msfs — MSFS Theorem 7.3 — meta-vertical axis: meta-iterations stabilise via Theorem A.7 :: src/theorems/msfs/five_axis.vr
def msfs_theorem_7_3_meta_vertical : Prop := sorry

-- theorem — msfs — MSFS Theorem 7.4 — lateral axis: alt orderings reduce to (∞, n) :: src/theorems/msfs/five_axis.vr
def msfs_theorem_7_4_lateral : Prop := sorry

-- axiom — msfs — MSFS Definition 7.5 — Lawvere-scope LS (anchor) :: src/theorems/msfs/five_axis.vr
axiom msfs_definition_7_5_lawvere_scope : Prop

-- theorem — msfs — MSFS Theorem 7.6 — completeness axis (within Lawvere-scope) :: src/theorems/msfs/five_axis.vr
def msfs_theorem_7_6_completeness : Prop := sorry

-- theorem — msfs — MSFS §12 — Univalent Foundations diagnostic: passes (F_S, Π_4 cond.); fails (Π_3-max) :: src/theorems/msfs/consequences.vr
def msfs_consequence_univalent_foundations : Prop := msfs_theorem_5_1_afnt_alpha

-- theorem — msfs — MSFS §12 — Higher Topos Theory diagnostic: passes (F_S); fails (Π_3-max) :: src/theorems/msfs/consequences.vr
def msfs_consequence_higher_topos : Prop := msfs_theorem_5_1_afnt_alpha

-- theorem — msfs — MSFS §12 — Cohesive ∞-Topos diagnostic: passes (F_S); fails (Π_3-max) :: src/theorems/msfs/consequences.vr
def msfs_consequence_cohesive : Prop := msfs_theorem_5_1_afnt_alpha

-- theorem — msfs — MSFS §12 — ∞-Cosmoi diagnostic: passes (F_S); fails (Π_3-max) :: src/theorems/msfs/consequences.vr
def msfs_consequence_infinity_cosmoi : Prop := msfs_theorem_5_1_afnt_alpha

-- axiom — msfs — MSFS Q1 — closed in Diakrisis 103.T-106.T :: src/theorems/msfs/consequences.vr
axiom msfs_open_question_Q1_closed_in_diakrisis : Prop

-- axiom — msfs — MSFS Q2 — completeness of meta-framework list — OPEN :: src/theorems/msfs/consequences.vr
axiom msfs_open_question_Q2_open : Prop

-- axiom — msfs — MSFS Q3 — closed in Diakrisis 133.T :: src/theorems/msfs/consequences.vr
axiom msfs_open_question_Q3_closed_in_diakrisis : Prop

-- axiom — msfs — MSFS Q4 — closed in Diakrisis 134.T :: src/theorems/msfs/consequences.vr
axiom msfs_open_question_Q4_closed_in_diakrisis : Prop

-- axiom — msfs — MSFS Q5 — closed in Diakrisis 137.T :: src/theorems/msfs/consequences.vr
axiom msfs_open_question_Q5_closed_in_diakrisis : Prop

-- axiom — msfs — MSFS Definition B.1 — Paraconsistent R-S with extractable classical kernel :: src/theorems/msfs/paraconsistent.vr
axiom msfs_definition_B_1_paraconsistent_rich_s : Prop

-- axiom — msfs — MSFS Theorem B.2 — Paraconsistent AFN-T (transfer via classical kernel) :: src/theorems/msfs/paraconsistent.vr
axiom msfs_theorem_B_2_paraconsistent_afnt : Prop

-- axiom — msfs — MSFS Theorem 6.1 — AFN-T β-part: transfinite-limit colimit lies in S_S^global, hence ¬Π_4 :: src/theorems/msfs/afnt_beta.vr
axiom msfs_theorem_6_1_afnt_beta : Prop

-- axiom — msfs — MSFS Theorem 6.1 Step 1 — each tower term has Lemma 3.4 witness; expose the seed anchor :: src/theorems/msfs/afnt_beta.vr
axiom msfs_theorem_6_1_step_1_seed_witness : Prop

-- axiom — msfs — MSFS Theorem 6.1 Step 2 — monotone tower → S-indexed diagram D: λ → cF :: src/theorems/msfs/afnt_beta.vr
axiom msfs_theorem_6_1_step_2_diagram_s_indexed : Prop

-- theorem — msfs — MSFS Theorem 6.1 (operational, 3-step structural body) — colim ∈ S_S^global :: src/theorems/msfs/afnt_beta.vr
def msfs_theorem_6_1_colim_in_s_s_global : Prop := sorry

-- axiom — msfs — MSFS Proposition 6.2 — proper-class towers dichotomy (both branches close to ¬L_Abs) :: src/theorems/msfs/afnt_beta.vr
axiom msfs_proposition_6_2_proper_class_dichotomy : Prop

-- axiom — msfs — MSFS Proposition 6.3 — trajectory space lives in S_S^global :: src/theorems/msfs/afnt_beta.vr
axiom msfs_proposition_6_3_trajectory_space : Prop

-- axiom — msfs — MSFS Proposition 6.3 (corollary) — trajectory-tower colimits in S_S^global :: src/theorems/msfs/afnt_beta.vr
axiom msfs_proposition_6_3_corollary : Prop

-- axiom — msfs — MSFS §6.1 reduction — transfinite-tower colimit lives in S_S^global, reduces to standard L_Abs candidate :: src/theorems/msfs/afnt_beta.vr
axiom msfs_theorem_6_1_beta_tower_reduction : Prop

-- theorem — msfs — MSFS Theorem 6.1 (operational closure) — no L_Abs via transfinite tower :: src/theorems/msfs/afnt_beta.vr
def msfs_theorem_6_1_operational_closure : Prop := sorry

