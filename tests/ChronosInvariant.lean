/-
  Chronos REAL invariant:

  The Chronos core must be importable and typecheck in isolation.
  This file should remain minimal and stable.
-/

import Chronos

-- Minimal sanity witness: universe-polymorphic identity
def chronosInvariantWitness (α : Sort u) (x : α) : α := x
