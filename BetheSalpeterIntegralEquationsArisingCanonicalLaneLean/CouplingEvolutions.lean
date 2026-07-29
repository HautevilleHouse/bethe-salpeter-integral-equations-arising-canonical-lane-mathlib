import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BetheSalpeterIntegralEquationsArisingCanonicalLaneLean

structure CouplingEvolutionsPackage {G : BetheSalpeterKernelStructure}
    {P : GreenFunctionPropagationPackage G} (B : BoundStateClassificationPackage P) where
  renormalizationGroup : Type u
  betaFunction : Type v
  runningCoupling : Type w
  asymptoticFreedom : Prop
  infraredBehavior : Prop
  renormalizationGroupDefined : renormalizationGroup
  betaFunctionDefined : betaFunction
  runningCouplingDefined : runningCoupling
  asymptoticFreedomClosed : asymptoticFreedom
  infraredBehaviorClosed : infraredBehavior

structure CouplingEvolutionsEvidence {G : BetheSalpeterKernelStructure}
    {P : GreenFunctionPropagationPackage G} {B : BoundStateClassificationPackage P}
    (C : CouplingEvolutionsPackage B) where
  asymptoticFreedomClosed : C.asymptoticFreedom
  infraredBehaviorClosed : C.infraredBehavior

def CouplingEvolutionsClosed {G : BetheSalpeterKernelStructure}
    {P : GreenFunctionPropagationPackage G} {B : BoundStateClassificationPackage P}
    (C : CouplingEvolutionsPackage B) : Prop :=
  C.asymptoticFreedom ∧ C.infraredBehavior

theorem coupling_evolutions_closed_from_evidence
    {G : BetheSalpeterKernelStructure} {P : GreenFunctionPropagationPackage G}
    {B : BoundStateClassificationPackage P} (C : CouplingEvolutionsPackage B)
    (E : CouplingEvolutionsEvidence C) : CouplingEvolutionsClosed C := by
  exact And.intro E.asymptoticFreedomClosed E.infraredBehaviorClosed

end BetheSalpeterIntegralEquationsArisingCanonicalLaneLean
end HautevilleHouse