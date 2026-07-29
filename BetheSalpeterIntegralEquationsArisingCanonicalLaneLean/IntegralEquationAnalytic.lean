import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BetheSalpeterIntegralEquationsArisingCanonicalLaneLean

structure IntegralEquationPackage {K : BetheSalpeterKernelPackage}
    {P : PropagatorAmplitudePackage K} where
  integralEquation : Prop
  regularityConditions : Prop
  uniqueness : Prop
  existenceOfSolution : Prop

structure IntegralEquationEvidence {K : BetheSalpeterKernelPackage}
    {P : PropagatorAmplitudePackage K} (I : IntegralEquationPackage K P) where
  integralEquationClosed : I.integralEquation
  regularityConditionsClosed : I.regularityConditions
  uniquenessClosed : I.uniqueness
  existenceOfSolutionClosed : I.existenceOfSolution

def IntegralEquationClosed {K : BetheSalpeterKernelPackage}
    {P : PropagatorAmplitudePackage K} (I : IntegralEquationPackage K P) : Prop :=
  I.integralEquation ∧ I.regularityConditions ∧ I.uniqueness ∧ I.existenceOfSolution

theorem integral_equation_closed_from_evidence {K : BetheSalpeterKernelPackage}
    {P : PropagatorAmplitudePackage K} (I : IntegralEquationPackage K P)
    (E : IntegralEquationEvidence I) : IntegralEquationClosed I := by
  exact And.intro E.integralEquationClosed (And.intro E.regularityConditionsClosed
    (And.intro E.uniquenessClosed E.existenceOfSolutionClosed))

end BetheSalpeterIntegralEquationsArisingCanonicalLaneLean
end HautevilleHouse