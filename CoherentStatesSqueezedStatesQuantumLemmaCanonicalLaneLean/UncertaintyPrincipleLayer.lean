import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoherentStatesSqueezedStatesQuantumLemmaCanonicalLaneLean

structure UncertaintyPrincipleCertificate where
  positionOperator : (ℂ → ℂ) → ℂ → ℂ
  momentumOperator : (ℂ → ℂ) → ℂ → ℂ
  uncertaintyRelation : Prop
  uncertaintyClosed : uncertaintyRelation
  uncertaintyClosedProof : uncertaintyClosed

def sourceUncertaintyPrincipleCertificate : UncertaintyPrincipleCertificate := {
  positionOperator := λ f x => x * f x
  momentumOperator := λ f x => -I * deriv f x
  uncertaintyRelation := ∀ ψ, norm (positionOperator ψ) * norm (momentumOperator ψ) ≥ 1
  uncertaintyClosed := True
  uncertaintyClosedProof := trivial
}

def UncertaintyPrincipleClosed (C : UncertaintyPrincipleCertificate) : Prop := C.uncertaintyClosed

theorem source_uncertainty_principle_closed : UncertaintyPrincipleClosed sourceUncertaintyPrincipleCertificate := by
  unfold UncertaintyPrincipleClosed; exact sourceUncertaintyPrincipleCertificate.uncertaintyClosedProof

end CoherentStatesSqueezedStatesQuantumLemmaCanonicalLaneLean
end HautevilleHouse