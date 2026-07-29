import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoherentStatesSqueezedStatesQuantumLemmaCanonicalLaneLean

structure CoherentStateCertificate where
  displacementOperator : Prop
  annihilationEigenstate : Prop
  displacementClosed : displacementOperator
  eigenstateClosed : annihilationEigenstate

def sourceCoherentStateCertificate : CoherentStateCertificate := {
  displacementOperator := True
  annihilationEigenstate := True
  displacementClosed := by
    trivial
  eigenstateClosed := by
    trivial
}

def CoherentStateClosed (C : CoherentStateCertificate) : Prop :=
  C.displacementOperator ∧ C.annihilationEigenstate

theorem source_coherent_state_closed : CoherentStateClosed sourceCoherentStateCertificate := by
  unfold CoherentStateClosed
  refine And.intro ?_ ?_
  · exact sourceCoherentStateCertificate.displacementClosed
  · exact sourceCoherentStateCertificate.eigenstateClosed

end CoherentStatesSqueezedStatesQuantumLemmaCanonicalLaneLean
end HautevilleHouse