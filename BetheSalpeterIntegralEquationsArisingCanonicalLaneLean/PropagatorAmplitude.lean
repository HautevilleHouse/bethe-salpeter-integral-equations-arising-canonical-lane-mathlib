import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BetheSalpeterIntegralEquationsArisingCanonicalLaneLean

structure PropagatorAmplitudePackage {K : BetheSalpeterKernelPackage} where
  fullPropagator : Type u
  boundStateAmplitude : Type v
  normalizationCondition : Prop
  poleStructure : Prop
  spectralWeight : Prop

structure PropagatorAmplitudeEvidence {K : BetheSalpeterKernelPackage}
    (P : PropagatorAmplitudePackage K) where
  normalizationConditionClosed : P.normalizationCondition
  poleStructureClosed : P.poleStructure
  spectralWeightClosed : P.spectralWeight

def PropagatorAmplitudeClosed {K : BetheSalpeterKernelPackage}
    (P : PropagatorAmplitudePackage K) : Prop :=
  P.normalizationCondition ∧ P.poleStructure ∧ P.spectralWeight

theorem propagator_amplitude_closed_from_evidence {K : BetheSalpeterKernelPackage}
    (P : PropagatorAmplitudePackage K) (E : PropagatorAmplitudeEvidence P) :
    PropagatorAmplitudeClosed P := by
  exact And.intro E.normalizationConditionClosed
    (And.intro E.poleStructureClosed E.spectralWeightClosed)

end BetheSalpeterIntegralEquationsArisingCanonicalLaneLean
end HautevilleHouse