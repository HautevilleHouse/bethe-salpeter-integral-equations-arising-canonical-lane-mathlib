import BetheSalpeterIntegralEquationsArisingCanonicalLaneLean.SpectralFunction

/-!
# Wick Rotation Package
-/

namespace HautevilleHouse
namespace BetheSalpeterIntegralEquationsArisingCanonicalLaneLean

structure WickRotationPackage {S : SpectralFunctionPackage} where
  euclideanRotation : Prop
  analyticalContinuation : Prop
  massShellContinuation : Prop
  euclideanRotationTerm : euclideanRotation
  analyticalContinuationTerm : analyticalContinuation
  massShellContinuationTerm : massShellContinuation

structure WickRotationEvidence {S : SpectralFunctionPackage}
    (W : WickRotationPackage S) where
  euclideanRotationClosed : W.euclideanRotation
  analyticalContinuationClosed : W.analyticalContinuation
  massShellContinuationClosed : W.massShellContinuation

def WickRotationClosed {S : SpectralFunctionPackage}
    (W : WickRotationPackage S) : Prop :=
  W.euclideanRotation ∧ W.analyticalContinuation ∧ W.massShellContinuation

theorem wick_rotation_closed_from_evidence
    {S : SpectralFunctionPackage} (W : WickRotationPackage S)
    (E : WickRotationEvidence W) : WickRotationClosed W := by
  exact And.intro E.euclideanRotationClosed
    (And.intro E.analyticalContinuationClosed E.massShellContinuationClosed)

end BetheSalpeterIntegralEquationsArisingCanonicalLaneLean
end HautevilleHouse
