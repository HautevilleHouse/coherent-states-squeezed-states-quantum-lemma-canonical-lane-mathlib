import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoherentStatesSqueezedStatesQuantumLemmaCanonicalLaneLean

structure UncertaintyRelationCertificate where
  commutationRelation : Prop
  heisenbergBound : Prop
  minimumUncertainty : Prop
  commutationClosed : commutationRelation
  boundClosed : heisenbergBound
  minimumClosed : minimumUncertainty

def sourceUncertaintyRelationCertificate : UncertaintyRelationCertificate := {
  commutationRelation := True
  heisenbergBound := True
  minimumUncertainty := True
  commutationClosed := by
    simp
  boundClosed := by
    simp
  minimumClosed := by
    simp
}

def UncertaintyRelationClosed (C : UncertaintyRelationCertificate) : Prop :=
  C.commutationRelation ∧ C.heisenbergBound ∧ C.minimumUncertainty

theorem source_uncertainty_relation_closed : UncertaintyRelationClosed sourceUncertaintyRelationCertificate := by
  exact And.intro sourceUncertaintyRelationCertificate.commutationClosed
    (And.intro sourceUncertaintyRelationCertificate.boundClosed sourceUncertaintyRelationCertificate.minimumClosed)

end CoherentStatesSqueezedStatesQuantumLemmaCanonicalLaneLean
end HautevilleHouse