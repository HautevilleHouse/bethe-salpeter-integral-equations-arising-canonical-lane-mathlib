import BetheSalpeterIntegralEquationsArisingCanonicalLaneLean.BetheSalpeterKernel

/-!
# Spectral Function Package
-/

namespace HautevilleHouse
namespace BetheSalpeterIntegralEquationsArisingCanonicalLaneLean

structure SpectralFunctionPackage where
  spectralDensity : Type u
  lehmannRepresentation : Prop
  kallenLehmann : Prop
  spectralConvergence : Prop
  lehmannRepresentationTerm : lehmannRepresentation
  kallenLehmannTerm : kallenLehmann
  spectralConvergenceTerm : spectralConvergence

structure SpectralFunctionEvidence (S : SpectralFunctionPackage) where
  lehmannRepresentationClosed : S.lehmannRepresentation
  kallenLehmannClosed : S.kallenLehmann
  spectralConvergenceClosed : S.spectralConvergence

def SpectralFunctionClosed (S : SpectralFunctionPackage) : Prop :=
  S.lehmannRepresentation ∧ S.kallenLehmann ∧ S.spectralConvergence

theorem spectral_function_closed_from_evidence
    (S : SpectralFunctionPackage) (E : SpectralFunctionEvidence S) :
    SpectralFunctionClosed S := by
  exact And.intro E.lehmannRepresentationClosed
    (And.intro E.kallenLehmannClosed E.spectralConvergenceClosed)

end BetheSalpeterIntegralEquationsArisingCanonicalLaneLean
end HautevilleHouse
