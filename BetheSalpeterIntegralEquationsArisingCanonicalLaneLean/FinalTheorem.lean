import HautevilleHouse.BetheSalpeterIntegralEquationsArisingCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.BetheSalpeterIntegralEquationsArisingCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace BetheSalpeterIntegralEquationsArisingCanonicalLaneLean

def ConstrainedBetheSalpeterClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_bethe_salpeter_endgame (A : AdmissibleClass) :
    ConstrainedBetheSalpeterClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BetheSalpeterIntegralEquationsArisingCanonicalLaneLean
end HautevilleHouse