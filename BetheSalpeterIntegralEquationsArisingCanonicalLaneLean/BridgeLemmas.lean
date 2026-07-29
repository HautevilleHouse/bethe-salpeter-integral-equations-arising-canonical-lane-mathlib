import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BetheSalpeterIntegralEquationsArisingCanonicalLaneLean.BetheSalpeterObject

namespace HautevilleHouse
namespace BetheSalpeterIntegralEquationsArisingCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BetheSalpeterWitnessClosed (A.object : BetheSalpeterAdmittedObject)

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact (A.object : BetheSalpeterAdmittedObject).conclusion

end BetheSalpeterIntegralEquationsArisingCanonicalLaneLean
end HautevilleHouse