-- Chronos Invariant: CI-safe kernel stub
set_option autoImplicit false

namespace Chronos

-- Abstract types
axiom State : Type
axiom Entropy : Type

-- Transcript
axiom τ : Nat → State

-- Entropy measure (abstract)
axiom H : State → Entropy

-- Capacity bound (abstract)
axiom C : Entropy

-- Abstract bound relation
axiom Bound : Entropy → Entropy → Prop

-- Kernel capacity axiom
axiom capacity :
  ∀ t : Nat,
    Bound (H (τ (t + 1))) (H (τ t)) ∨
    Bound (H (τ (t + 1))) C

-- Kernel consequence (reordering only)
theorem chronos_step_bound (t : Nat) :
  Bound (H (τ (t + 1))) C ∨
  Bound (H (τ (t + 1))) (H (τ t)) :=
by
  exact capacity t

end Chronos

