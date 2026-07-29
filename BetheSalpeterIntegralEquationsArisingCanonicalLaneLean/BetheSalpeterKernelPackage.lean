import BetheSalpeterIntegralEquationsArisingCanonicalLaneLean.BetheSalpeterAdmissibleClass

namespace HautevilleHouse
namespace BetheSalpeterIntegralEquationsArisingCanonicalLaneLean

structure BetheSalpeterKernelPackage where
  kernelType : Type u
  momentumSpace : Type v
  freePropagator : kernelType → kernelType
  interactionKernel : kernelType → kernelType → kernelType
  kernelSymmetry : Prop
  kernelRegularity : Prop
  kernelBoundedness : Prop

structure BetheSalpeterKernelEvidence (K : BetheSalpeterKernelPackage) where
  kernelSymmetryClosed : K.kernelSymmetry
  kernelRegularityClosed : K.kernelRegularity
  kernelBoundednessClosed : K.kernelBoundedness

def BetheSalpeterKernelClosed (K : BetheSalpeterKernelPackage) : Prop :=
  K.kernelSymmetry ∧ K.kernelRegularity ∧ K.kernelBoundedness

theorem bethe_salpeter_kernel_closed_from_evidence
    (K : BetheSalpeterKernelPackage) (E : BetheSalpeterKernelEvidence K) :
    BetheSalpeterKernelClosed K := by
  exact And.intro E.kernelSymmetryClosed (And.intro E.kernelRegularityClosed E.kernelBoundednessClosed)

end BetheSalpeterIntegralEquationsArisingCanonicalLaneLean
end HautevilleHouse