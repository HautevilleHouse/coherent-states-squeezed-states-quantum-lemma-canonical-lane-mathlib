import CSQS_QuantumLayer.lean
import CSQS_AdmissibleClass.lean

namespace HautevilleHouse
namespace CoherentStatesSqueezedStatesQuantumLemmaCanonicalLaneLean

def ConstrainedCoherentSqueezedClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_coherent_squeezed_endgame (A : AdmissibleClass) :
    ConstrainedCoherentSqueezedClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CoherentStatesSqueezedStatesQuantumLemmaCanonicalLaneLean
end HautevilleHouse