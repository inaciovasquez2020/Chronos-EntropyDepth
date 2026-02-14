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

-- Abstract order (no arithmetic needed)
constant le : Entropy → Entropy → Prop
infix:50 " ≤ₑ " => le

-- Kernel capacity axiom
axiom capacity :
  ∀ t : Nat, H (τ (t + 1)) ≤ₑ H (τ t) ∨ H (τ (t + 1)) ≤ₑ C

-- Kernel consequence (purely structural)
theorem chronos_step_bound (t : Nat) :
  H (τ (t + 1)) ≤ₑ C ∨ H (τ (t + 1)) ≤ₑ H (τ t) :=
by
  exact capacity t

end Chronos

