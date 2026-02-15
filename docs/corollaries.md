## NCR / ISR Normalization-Resistance Corollary

**Corollary (Executable Normalization Barrier).**  
There exists a polynomial-time update system (ISR) whose operational traces admit fast local evolution while provably resisting compression into URF-admissible refinement transcripts beyond a bounded per-step information budget.

**Statement.**  
Let ISR(n) denote the implicit symbolic refinement system defined in the NCR repository. Then for any URF-admissible normalization procedure N with transcript budget b(n)=O(polylog n), there exists an ISR execution trace T of length poly(n) such that:

1. (Efficiency) ISR updates run in time poly(n) per step.
2. (Barrier) N(T) fails to produce a URF transcript respecting the admissibility constraints.
3. (Witnessed failure) The failure is recorded by a signed normalization-failure certificate, verifiable in polynomial time.

**Interpretation.**  
ISR constitutes an explicit computational regime separating:
- operational efficiency (“runs fast”), from
- transcript compressibility (“won’t normalize”).

This demonstrates that URF completeness does not imply capture of all polynomial-time computation, but only those respecting refinement-admissible information flow.

**Relation to Chronos / EntropyDepth.**  
The ISR regime provides a concrete, executable witness family supporting the Chronos thesis: entropy-bounded refinement systems encounter intrinsic normalization walls. ISR instantiates a non-pathological, deterministic example where the obstruction is observable, signed, and reproducible.

**Status.**  
- Implementation: complete and sealed  
- CI verification: green  
- Artifact: executable regime + signed certificates  
- DOI: see NCR repository release v1.0.0

**Reference.**  
NCR / ISR: *Normalization-Resistant Polynomial Regime*, Vasquez (2026).  
Repository: https://github.com/inaciovasquez2020/ncr-new-computational-regime

