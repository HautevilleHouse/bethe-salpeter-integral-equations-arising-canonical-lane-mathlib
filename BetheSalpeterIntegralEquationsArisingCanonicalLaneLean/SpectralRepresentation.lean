import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BetheSalpeterIntegralEquationsArisingCanonicalLaneLean

structure SpectralRepresentationPackage {K : BetheSalpeterKernelPackage}
    {P : PropagatorAmplitudePackage K} {I : IntegralEquationPackage K P}
    {R : RegularizationPackage K P I} where
  wightmanFunction : Type u
  spectralDensity : Prop
  lehmannRepresentation : Prop
  analyticContinuation : Prop

structure SpectralRepresentationEvidence {K : BetheSalpeterKernelPackage}
    {P : PropagatorAmplitudePackage K} {I : IntegralEquationPackage K P}
    {R : RegularizationPackage K P I} (S : SpectralRepresentationPackage K P I R) where
  spectralDensityClosed : S.spectralDensity
  lehmannRepresentationClosed : S.lehmannRepresentation
  analyticContinuationClosed : S.analyticContinuation

def SpectralRepresentationClosed {K : BetheSalpeterKernelPackage}
    {P : PropagatorAmplitudePackage K} {I : IntegralEquationPackage K P}
    {R : RegularizationPackage K P I} (S : SpectralRepresentationPackage K P I R) : Prop :=
  S.spectralDensity ∧ S.lehmannRepresentation ∧ S.analyticContinuation

theorem spectral_representation_closed_from_evidence {K : BetheSalpeterKernelPackage}
    {P : PropagatorAmplitudePackage K} {I : IntegralEquationPackage K P}
    {R : RegularizationPackage K P I} (S : SpectralRepresentationPackage K P I R)
    (E : SpectralRepresentationEvidence S) : SpectralRepresentationClosed S := by
  exact And.intro E.spectralDensityClosed (And.intro E.lehmannRepresentationClosed
    E.analyticContinuationClosed)

end BetheSalpeterIntegralEquationsArisingCanonicalLaneLean
end HautevilleHouse