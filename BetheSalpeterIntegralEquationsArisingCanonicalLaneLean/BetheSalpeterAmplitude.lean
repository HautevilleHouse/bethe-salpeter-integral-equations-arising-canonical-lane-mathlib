import HautevilleHouse.BetheSalpeterIntegralEquationsArisingCanonicalLaneLean.BetheSalpeterEquation

namespace HautevilleHouse
namespace BetheSalpeterIntegralEquationsArisingCanonicalLaneLean

structure AmplitudePackage {O : BetheSalpeterAdmittedObject} {K : KernelPackage O} {Eq : EquationPackage K} where
  amplitudeFunction : Type
  normalizationCondition : Prop
  causalStructure : Prop

structure AmplitudeEvidence {O : BetheSalpeterAdmittedObject} {K : KernelPackage O} {Eq : EquationPackage K} (A : AmplitudePackage Eq) where
  normalizationConditionClosed : A.normalizationCondition
  causalStructureClosed : A.causalStructure

def AmplitudeClosed {O : BetheSalpeterAdmittedObject} {K : KernelPackage O} {Eq : EquationPackage K} (A : AmplitudePackage Eq) : Prop :=
  A.normalizationCondition ∧ A.causalStructure

theorem amplitude_closed_from_evidence {O : BetheSalpeterAdmittedObject} {K : KernelPackage O} {Eq : EquationPackage K} (A : AmplitudePackage Eq) (Ev : AmplitudeEvidence A) : AmplitudeClosed A := by
  exact And.intro Ev.normalizationConditionClosed Ev.causalStructureClosed

end BetheSalpeterIntegralEquationsArisingCanonicalLaneLean
end HautevilleHouse