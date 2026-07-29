import BetheSalpeterIntegralEquationsArisingCanonicalLaneLean.BetheSalpeterKernelPackage

namespace HautevilleHouse
namespace BetheSalpeterIntegralEquationsArisingCanonicalLaneLean

structure BetheSalpeterEquationStructure {K : BetheSalpeterKernelPackage} where
  equationType : Type u
  vertexFunction : K.kernelType → ℝ
  integralOperator : (K.kernelType → ℝ) → (K.kernelType → ℝ)
  homogeneousTerm : K.kernelType → ℝ
  equationWellDefined : Prop
  solutionExistence : Prop
  uniqueness : Prop

structure BetheSalpeterEquationEvidence {K : BetheSalpeterKernelPackage}
    (E : BetheSalpeterEquationStructure K) where
  equationWellDefinedClosed : E.equationWellDefined
  solutionExistenceClosed : E.solutionExistence
  uniquenessClosed : E.uniqueness

def BetheSalpeterEquationClosed {K : BetheSalpeterKernelPackage}
    (E : BetheSalpeterEquationStructure K) : Prop :=
  E.equationWellDefined ∧ E.solutionExistence ∧ E.uniqueness

theorem bethe_salpeter_equation_closed_from_evidence
    {K : BetheSalpeterKernelPackage} (E : BetheSalpeterEquationStructure K)
    (Ev : BetheSalpeterEquationEvidence E) : BetheSalpeterEquationClosed E := by
  exact And.intro Ev.equationWellDefinedClosed (And.intro Ev.solutionExistenceClosed Ev.uniquenessClosed)

end BetheSalpeterIntegralEquationsArisingCanonicalLaneLean
end HautevilleHouse