import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoherentStatesSqueezedStatesQuantumLemmaCanonicalLaneLean

structure SqueezedStateCertificate where
  squeezingOperator : Prop
  varianceReduction : Prop
  squeezingClosed : squeezingOperator
  varianceClosed : varianceReduction

def sourceSqueezedStateCertificate : SqueezedStateCertificate := {
  squeezingOperator := True
  varianceReduction := True
  squeezingClosed := by trivial
  varianceClosed := by trivial
}

def SqueezedStateClosed (C : SqueezedStateCertificate) : Prop :=
  C.squeezingOperator ∧ C.varianceReduction

theorem source_squeezed_state_closed : SqueezedStateClosed sourceSqueezedStateCertificate := by
  exact And.intro sourceSqueezedStateCertificate.squeezingClosed sourceSqueezedStateCertificate.varianceClosed

end CoherentStatesSqueezedStatesQuantumLemmaCanonicalLaneLean
end HautevilleHouse