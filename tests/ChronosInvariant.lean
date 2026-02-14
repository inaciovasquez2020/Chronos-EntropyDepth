-- Chronos Invariant: CI-safe kernel stub
set_option autoImplicit false

namespace Chronos

-- Abstract types
constant State : Type
constant Entropy : Type

-- Transcript
constant τ : Nat → State

-- Entropy measure (abstract)
constant H : State → Entropy

-- Capacity bound (abstract)
constant C : Entropy

-- Abstract bound relation (no notation)
constant Bound : Entropy → Entropy → Prop

-- Kernel capacity axiom
axiom capacity :
  ∀ t : Nat,
    Bound (H (τ (t + 1))) (H (τ t)) ∨
    Bound (H (τ (t + 1))) C

-- Kernel consequence (structural reordering)
theorem chronos_step_bound (t : Nat) :
  Bound (H (τ (t + 1))) C ∨
  Bound (H (τ (t + 1))) (H (τ t)) :=
by
  exact capacity t

end Chronos
