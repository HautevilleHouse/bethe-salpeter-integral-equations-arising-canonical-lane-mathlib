import BetheSalpeterIntegralEquationsArisingCanonicalLaneLean.BetheSalpeterBridgeLemmas

namespace HautevilleHouse
namespace BetheSalpeterIntegralEquationsArisingCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end BetheSalpeterIntegralEquationsArisingCanonicalLaneLean
end HautevilleHouse