import Mathlib

set_option autoImplicit false

namespace Chronos

-- Abstract state type
constant State : Type

-- Transcript
constant τ : Nat → State

-- Entropy function
constant H : State → ℝ

-- Capacity bound
constant C : ℝ

-- Kernel capacity axiom
axiom capacity :
  ∀ t : Nat, H (τ (t + 1)) - H (τ t) ≤ C

-- One-step Chronos consequence
theorem chronos_step_bound (t : Nat) :
  H (τ (t + 1)) - H (τ t) ≤ C :=
by
  exact capacity t

end Chronos

