import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BetheSalpeterIntegralEquationsArisingCanonicalLaneLean

structure RegularizationPackage {K : BetheSalpeterKernelPackage}
    {P : PropagatorAmplitudePackage K} {I : IntegralEquationPackage K P} where
  cutoffScheme : Prop
  renormalizationCondition : Prop
  convergence : Prop
  independenceOfCutoff : Prop

structure RegularizationEvidence {K : BetheSalpeterKernelPackage}
    {P : PropagatorAmplitudePackage K} {I : IntegralEquationPackage K P}
    (R : RegularizationPackage K P I) where
  cutoffSchemeClosed : R.cutoffScheme
  renormalizationConditionClosed : R.renormalizationCondition
  convergenceClosed : R.convergence
  independenceOfCutoffClosed : R.independenceOfCutoff

def RegularizationClosed {K : BetheSalpeterKernelPackage}
    {P : PropagatorAmplitudePackage K} {I : IntegralEquationPackage K P}
    (R : RegularizationPackage K P I) : Prop :=
  R.cutoffScheme ∧ R.renormalizationCondition ∧ R.convergence ∧ R.independenceOfCutoff

theorem regularization_closed_from_evidence {K : BetheSalpeterKernelPackage}
    {P : PropagatorAmplitudePackage K} {I : IntegralEquationPackage K P}
    (R : RegularizationPackage K P I) (E : RegularizationEvidence R) :
    RegularizationClosed R := by
  exact And.intro E.cutoffSchemeClosed (And.intro E.renormalizationConditionClosed
    (And.intro E.convergenceClosed E.independenceOfCutoffClosed))

end BetheSalpeterIntegralEquationsArisingCanonicalLaneLean
end HautevilleHouse