import BetheSalpeterIntegralEquationsArisingCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BetheSalpeterIntegralEquationsArisingCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  betheSalpeterConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String
deriving Repr, DecidableEq

def sourceRepository : String := "bethe-salpeter-integral-equations-arising-canonical-lane"
def sourceDescription : String := "Bethe Salpeter Integral Equations Arising"
def sourceTheoremBoundary : String := "classical boundary"
def baselineCertificateLane : String := "manifold_constrained"

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := sourceRepository,
  theoremName := sourceRepository,
  theoremObject := sourceDescription,
  classicalBoundary := sourceTheoremBoundary,
  betheSalpeterConstrainedStatement := "Bethe-Salpeter integral equation kernel closure through bridge and gate",
  certificateLane := baselineCertificateLane,
  carriedRemainder := "classical source boundary carried by formalization certificate"
}

theorem theorem_statement_source_key_checked :
    sourceTheoremStatement.sourceKey = sourceRepository := by
  rfl

theorem theorem_statement_certificate_lane_checked :
    sourceTheoremStatement.certificateLane = baselineCertificateLane := by
  rfl

end BetheSalpeterIntegralEquationsArisingCanonicalLaneLean
end HautevilleHouse