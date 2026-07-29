import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BetheSalpeterIntegralEquationsArisingCanonicalLaneLean

structure BetheSalpeterKernelStructure where
  kernelFunction : Type u
  externalLegs : Nat
  internalMomentum : Type v
  lorentzInvariance : Prop
  symmetryProperty : Prop
  kernelFunctionDefined : kernelFunction
  externalLegsDefined : externalLegs = 4
  internalMomentumDefined : internalMomentum
  lorentzInvarianceClosed : lorentzInvariance
  symmetryPropertyClosed : symmetryProperty

structure BetheSalpeterKernelEvidence (K : BetheSalpeterKernelStructure) where
  lorentzInvarianceClosed : K.lorentzInvariance
  symmetryPropertyClosed : K.symmetryProperty

def BetheSalpeterKernelClosed (K : BetheSalpeterKernelStructure) : Prop :=
  K.lorentzInvariance ∧ K.symmetryProperty

theorem bethe_salpeter_kernel_closed_from_evidence (K : BetheSalpeterKernelStructure)
    (E : BetheSalpeterKernelEvidence K) : BetheSalpeterKernelClosed K := by
  exact And.intro E.lorentzInvarianceClosed E.symmetryPropertyClosed

end BetheSalpeterIntegralEquationsArisingCanonicalLaneLean
end HautevilleHouse