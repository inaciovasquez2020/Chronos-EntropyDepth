# Chronos No-Go Theorem (Strategy-Class Boundary)

This note freezes the strategy-class boundary implied by the Chronos / EntropyDepth toolkit objects (ED, transcript capacity, admissible refinement).

## Objects

Let \(F_n\) be a satisfiable instance family with solution random variable \(X_n\) (uniform over satisfying assignments).  
Let \(T=(S_t)_{t=0}^m\) be a refinement transcript.

Transcript capacity:
\[
\mathrm{TC}(T) := \sum_{t=1}^m I(X_n; S_t \mid S_{t-1}).
\]

Admissibility (Chronos / URF):
- Locality: each step’s new information is measurable from a bounded-radius neighborhood in the bounded-degree representation graph.
- Bounded per-step gain: \(\exists C<\infty\) such that for all \(t\), \(I(X_n; S_t \mid S_{t-1}) \le C\).
- Correctness (witnessed): the terminal state determines a witness with vanishing ambiguity:
  \[
  H(X_n \mid S_m) = O(1).
  \]

## No-Go Theorem (Strategy-Class Level)

**Theorem (Chronos No-Go, strategy-class boundary).**  
Fix a constant radius \(r\). For any satisfiable family \(\{F_n\}\) with \(H(X_n)=\Omega(n)\), every admissible \(r\)-local transcript \(T\) satisfying \(H(X_n \mid S_m)=O(1)\) must obey:
\[
\mathrm{TC}(T) \ge H(X_n) - O(1) = \Omega(n).
\]
In particular, no admissible fixed-radius local refinement strategy can solve \(\{F_n\}\) with sublinear total information extraction.

## Proof kernel

By correctness, \(I(X_n;S_m)=H(X_n)-H(X_n\mid S_m)=H(X_n)-O(1)\).  
By the mutual-information chain rule along the filtration,
\[
I(X_n;S_m)=\sum_{t=1}^m I(X_n;S_t\mid S_{t-1})=\mathrm{TC}(T).
\]
Therefore \(\mathrm{TC}(T)\ge H(X_n)-O(1)\). □

## Notes

- This theorem is a strategy-class boundary: to beat \(\Omega(n)\) total extraction when \(H(X_n)=\Omega(n)\), one must violate admissibility (locality, bounded gain, or the refinement model), not merely “optimize” within it.
- Any stronger depth statement (e.g., \(\Omega(n\log n)\)) requires an additional quantitative per-step attenuation lemma beyond bounded-rank / bounded-radius locality.
