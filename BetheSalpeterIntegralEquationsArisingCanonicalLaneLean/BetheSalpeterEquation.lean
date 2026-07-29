import HautevilleHouse.BetheSalpeterIntegralEquationsArisingCanonicalLaneLean.BetheSalpeterKernel

namespace HautevilleHouse
namespace BetheSalpeterIntegralEquationsArisingCanonicalLaneLean

structure EquationPackage {O : BetheSalpeterAdmittedObject} (K : KernelPackage O) where
  integralEquation : Prop
  boundStateCondition : Prop
  scatteringCondition : Prop

structure EquationEvidence {O : BetheSalpeterAdmittedObject} {K : KernelPackage O} (E : EquationPackage K) where
  integralEquationClosed : E.integralEquation
  boundStateConditionClosed : E.boundStateCondition
  scatteringConditionClosed : E.scatteringCondition

def EquationClosed {O : BetheSalpeterAdmittedObject} {K : KernelPackage O} (E : EquationPackage K) : Prop :=
  E.integralEquation ∧ E.boundStateCondition ∧ E.scatteringCondition

theorem equation_closed_from_evidence {O : BetheSalpeterAdmittedObject} {K : KernelPackage O} (E : EquationPackage K) (Ev : EquationEvidence E) : EquationClosed E := by
  exact And.intro Ev.integralEquationClosed (And.intro Ev.boundStateConditionClosed Ev.scatteringConditionClosed)

end BetheSalpeterIntegralEquationsArisingCanonicalLaneLean
end HautevilleHouse