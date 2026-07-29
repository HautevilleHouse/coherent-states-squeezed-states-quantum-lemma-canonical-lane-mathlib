import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoherentStatesSqueezedStatesQuantumLemmaCanonicalLaneLean

def ConstrainedCoherentSqueezedClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_coherent_squeezed_closure (A : AdmissibleClass) :
    ConstrainedCoherentSqueezedClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CoherentStatesSqueezedStatesQuantumLemmaCanonicalLaneLean
end HautevilleHouse