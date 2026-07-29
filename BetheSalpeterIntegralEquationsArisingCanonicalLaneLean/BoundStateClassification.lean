import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BetheSalpeterIntegralEquationsArisingCanonicalLaneLean

structure BoundStateClassificationPackage {G : BetheSalpeterKernelStructure}
    (P : GreenFunctionPropagationPackage G) where
  massSpectrum : Type u
  boundStateExist : Prop
  discreteSpectrum : Prop
  boundStateWaveFunction : Type v
  boundStateExistClosed : boundStateExist
  discreteSpectrumClosed : discreteSpectrum

structure BoundStateClassificationEvidence {G : BetheSalpeterKernelStructure}
    {P : GreenFunctionPropagationPackage G}
    (B : BoundStateClassificationPackage P) where
  boundStateExistClosed : B.boundStateExist
  discreteSpectrumClosed : B.discreteSpectrum

def BoundStateClassificationClosed {G : BetheSalpeterKernelStructure}
    {P : GreenFunctionPropagationPackage G}
    (B : BoundStateClassificationPackage P) : Prop :=
  B.boundStateExist ∧ B.discreteSpectrum

theorem bound_state_classification_closed_from_evidence
    {G : BetheSalpeterKernelStructure} {P : GreenFunctionPropagationPackage G}
    (B : BoundStateClassificationPackage P) (E : BoundStateClassificationEvidence B) :
    BoundStateClassificationClosed B := by
  exact And.intro E.boundStateExistClosed E.discreteSpectrumClosed

end BetheSalpeterIntegralEquationsArisingCanonicalLaneLean
end HautevilleHouse