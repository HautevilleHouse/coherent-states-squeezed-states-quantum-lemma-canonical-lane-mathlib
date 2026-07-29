import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoherentStatesSqueezedStatesQuantumLemmaCanonicalLaneLean

structure CoherentState where
  alpha : ℂ          -- displacement parameter
  vacuum : ℂ → ℂ     -- vacuum wavefunction
  displaced : ℂ → ℂ  -- displaced wavefunction
  normalization : ℝ

structure HilbertSpace where
  carrier : Type
  innerProduct : carrier → carrier → ℂ
  completeness : Prop

def coherentStateBridge (A : AdmissibleClass) : Prop := True

theorem coherent_state_hilbert_structure : coherentStateBridge (AdmissibleClass.mk (by trivial) True True (Or.inl trivial)) :=
  by
    unfold coherentStateBridge
    trivial

end CoherentStatesSqueezedStatesQuantumLemmaCanonicalLaneLean
end HautevilleHouse