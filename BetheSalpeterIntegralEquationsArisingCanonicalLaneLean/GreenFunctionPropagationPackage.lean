import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BetheSalpeterIntegralEquationsArisingCanonicalLaneLean

structure GreenFunctionPropagationPackage (G : BetheSalpeterKernelStructure) where
  propagator : Type u
  integralEquation : Prop
  iteratedKernel : Type v
  convergentExpansion : Prop
  propagatorDefined : propagator
  integralEquationClosed : integralEquation
  iteratedKernelDefined : iteratedKernel
  convergentExpansionClosed : convergentExpansion

structure GreenFunctionPropagationEvidence {G : BetheSalpeterKernelStructure}
    (P : GreenFunctionPropagationPackage G) where
  integralEquationClosed : P.integralEquation
  convergentExpansionClosed : P.convergentExpansion

def GreenFunctionPropagationClosed {G : BetheSalpeterKernelStructure}
    (P : GreenFunctionPropagationPackage G) : Prop :=
  P.integralEquation ∧ P.convergentExpansion

theorem green_function_propagation_closed_from_evidence
    {G : BetheSalpeterKernelStructure} (P : GreenFunctionPropagationPackage G)
    (E : GreenFunctionPropagationEvidence P) : GreenFunctionPropagationClosed P := by
  exact And.intro E.integralEquationClosed E.convergentExpansionClosed

end BetheSalpeterIntegralEquationsArisingCanonicalLaneLean
end HautevilleHouse