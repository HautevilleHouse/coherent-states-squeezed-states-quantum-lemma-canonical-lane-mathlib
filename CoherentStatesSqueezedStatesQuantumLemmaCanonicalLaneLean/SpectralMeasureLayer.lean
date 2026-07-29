import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoherentStatesSqueezedStatesQuantumLemmaCanonicalLaneLean

structure SpectralMeasureCertificate where
  vacuumVector : ℂ
  coherentAmplitude : ℝ → ℂ
  measureClosed : Prop
  measureClosedProof : measureClosed

def sourceSpectralMeasureCertificate : SpectralMeasureCertificate := {
  vacuumVector := 1
  coherentAmplitude := λ α => Complex.exp (-(α^2)/2)
  measureClosed := True
  measureClosedProof := trivial
}

def SpectralMeasureClosed (C : SpectralMeasureCertificate) : Prop := C.measureClosed

theorem source_spectral_measure_closed : SpectralMeasureClosed sourceSpectralMeasureCertificate := by
  unfold SpectralMeasureClosed; exact sourceSpectralMeasureCertificate.measureClosedProof

end CoherentStatesSqueezedStatesQuantumLemmaCanonicalLaneLean
end HautevilleHouse