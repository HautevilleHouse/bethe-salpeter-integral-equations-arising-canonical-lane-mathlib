import BetheSalpeterIntegralEquationsArisingCanonicalLaneLean.BetheSalpeterEquationStructure

namespace HautevilleHouse
namespace BetheSalpeterIntegralEquationsArisingCanonicalLaneLean

structure BetheSalpeterRenormalizationFlow {K : BetheSalpeterKernelPackage}
    {E : BetheSalpeterEquationStructure K} where
  flowParameter : ℝ → ℝ
  betaFunction : ℝ → ℝ
  fixedPoint : ℝ
  flowExistence : Prop
  asymptoticFreedom : Prop
  monotonicity : Prop

structure BetheSalpeterRenormalizationFlowEvidence
    {K : BetheSalpeterKernelPackage} {E : BetheSalpeterEquationStructure K}
    (F : BetheSalpeterRenormalizationFlow E) where
  flowExistenceClosed : F.flowExistence
  asymptoticFreedomClosed : F.asymptoticFreedom
  monotonicityClosed : F.monotonicity

def BetheSalpeterRenormalizationFlowClosed
    {K : BetheSalpeterKernelPackage} {E : BetheSalpeterEquationStructure K}
    (F : BetheSalpeterRenormalizationFlow E) : Prop :=
  F.flowExistence ∧ F.asymptoticFreedom ∧ F.monotonicity

theorem bethe_salpeter_renormalization_flow_closed_from_evidence
    {K : BetheSalpeterKernelPackage} {E : BetheSalpeterEquationStructure K}
    (F : BetheSalpeterRenormalizationFlow E)
    (Ev : BetheSalpeterRenormalizationFlowEvidence F) : BetheSalpeterRenormalizationFlowClosed F := by
  exact And.intro Ev.flowExistenceClosed (And.intro Ev.asymptoticFreedomClosed Ev.monotonicityClosed)

end BetheSalpeterIntegralEquationsArisingCanonicalLaneLean
end HautevilleHouse