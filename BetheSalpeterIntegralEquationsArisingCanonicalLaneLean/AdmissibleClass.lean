import BetheSalpeterIntegralEquationsArisingCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace BetheSalpeterIntegralEquationsArisingCanonicalLaneLean

structure AdmissibleClass where
  object : BetheSalpeterAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BetheSalpeterWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BetheSalpeterIntegralEquationsArisingCanonicalLaneLean
end HautevilleHouse
