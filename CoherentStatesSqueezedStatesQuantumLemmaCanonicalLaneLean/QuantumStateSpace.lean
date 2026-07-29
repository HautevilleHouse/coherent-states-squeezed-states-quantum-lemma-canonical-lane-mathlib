import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoherentStatesSqueezedStatesQuantumLemmaCanonicalLaneLean

structure QuantumStateSpace where
  hilbertDimension : ℕ
  innerProductDefined : Prop
  completenessClosed : Prop

def sourceQuantumStateSpace : QuantumStateSpace := {
  hilbertDimension := 2
  innerProductDefined := True
  completenessClosed := True
}

theorem quantum_state_space_defined : sourceQuantumStateSpace.innerProductDefined := by
  unfold sourceQuantumStateSpace
  trivial

end CoherentStatesSqueezedStatesQuantumLemmaCanonicalLaneLean
end HautevilleHouse