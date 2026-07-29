import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoherentStatesSqueezedStatesQuantumLemmaCanonicalLaneLean

structure CoherentSqueezedBridgeCertificate where
  coherent : CoherentStateCertificate
  squeezed : SqueezedStateCertificate
  uncertainty : UncertaintyRelationCertificate
  bridgeCondition : Prop
  bridgeClosed : bridgeCondition

def sourceCoherentSqueezedBridgeCertificate : CoherentSqueezedBridgeCertificate := {
  coherent := sourceCoherentStateCertificate
  squeezed := sourceSqueezedStateCertificate
  uncertainty := sourceUncertaintyRelationCertificate
  bridgeCondition := True
  bridgeClosed := by
    exact trivial
}

def CoherentSqueezedBridgeClosed (C : CoherentSqueezedBridgeCertificate) : Prop :=
  CoherentStateClosed C.coherent ∧ SqueezedStateClosed C.squeezed ∧ UncertaintyRelationClosed C.uncertainty ∧ C.bridgeCondition

theorem source_coherent_squeezed_bridge_closed : CoherentSqueezedBridgeClosed sourceCoherentSqueezedBridgeCertificate := by
  exact And.intro source_coherent_state_closed
    (And.intro source_squeezed_state_closed
      (And.intro source_uncertainty_relation_closed sourceCoherentSqueezedBridgeCertificate.bridgeClosed))

end CoherentStatesSqueezedStatesQuantumLemmaCanonicalLaneLean
end HautevilleHouse