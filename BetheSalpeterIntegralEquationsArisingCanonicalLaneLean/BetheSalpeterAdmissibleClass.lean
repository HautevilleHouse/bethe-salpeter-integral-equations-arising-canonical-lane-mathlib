import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BetheSalpeterIntegralEquationsArisingCanonicalLaneLean

structure BetheSalpeterAdmittedObject where
  kernelType : Type u
  couplingParameter : ℝ
  vertexFunction : kernelType → ℝ
  integralEquationSatisfied : Prop
  conclusion : integralEquationSatisfied

structure AdmissibleClass where
  object : BetheSalpeterAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BetheSalpeterWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BetheSalpeterIntegralEquationsArisingCanonicalLaneLean
end HautevilleHouse