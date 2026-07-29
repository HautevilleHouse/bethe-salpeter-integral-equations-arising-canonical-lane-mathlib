import BetheSalpeterIntegralEquationsArisingCanonicalLaneLean.MathlibObjects

/-!
# Bethe-Salpeter Kernel Package
-/

namespace HautevilleHouse
namespace BetheSalpeterIntegralEquationsArisingCanonicalLaneLean

structure BetheSalpeterKernelPackage where
  momentumSpace : Type u
  minkowskiMetric : Type v
  twoParticleIrreducible : Prop
  ladderApproximation : Prop
  couplingConstant : ℝ
  kernelRegularity : Prop
  kernelRegularityTerm : kernelRegularity

structure BetheSalpeterKernelEvidence (K : BetheSalpeterKernelPackage) where
  twoParticleIrreducibleClosed : K.twoParticleIrreducible
  ladderApproximationClosed : K.ladderApproximation
  kernelRegularityClosed : K.kernelRegularity

def BetheSalpeterKernelClosed (K : BetheSalpeterKernelPackage) : Prop :=
  K.twoParticleIrreducible ∧ K.ladderApproximation ∧ K.kernelRegularity

theorem bethe_salpeter_kernel_closed_from_evidence
    (K : BetheSalpeterKernelPackage) (E : BetheSalpeterKernelEvidence K) :
    BetheSalpeterKernelClosed K := by
  exact And.intro E.twoParticleIrreducibleClosed
    (And.intro E.ladderApproximationClosed E.kernelRegularityClosed)

end BetheSalpeterIntegralEquationsArisingCanonicalLaneLean
end HautevilleHouse
