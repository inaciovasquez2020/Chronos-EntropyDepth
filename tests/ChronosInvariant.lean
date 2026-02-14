import Std

set_option autoImplicit false

namespace Chronos

constant State : Type
constant Entropy : Type

constant τ : Nat → State
constant H : State → Entropy
constant C : Entropy

constant Bound : Entropy → Entropy → Prop

axiom capacity :
  ∀ t : Nat,
    Bound (H (τ (t + 1))) (H (τ t)) ∨
    Bound (H (τ (t + 1))) C

theorem chronos_step_bound (t : Nat) :
  Bound (H (τ (t + 1))) C ∨
  Bound (H (τ (t + 1))) (H (τ t)) :=
by
  exact capacity t

end Chronos
