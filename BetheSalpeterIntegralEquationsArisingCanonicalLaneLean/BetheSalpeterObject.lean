import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BetheSalpeterIntegralEquationsArisingCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure BetheSalpeterData where
  momentumSpace : Type
  kernelFunction : momentumSpace → momentumSpace → ℝ
  couplingConstant : ℝ
  massParameter : ℝ

def kernelIntegrable (KS : BetheSalpeterData) : Prop :=
  True  -- placeholder for integrability condition

structure BetheSalpeterAdmittedObject where
  data : BetheSalpeterData
  boundednessCondition : kernelIntegrable data
  spectralGapCondition : Prop
  boundStateExists : Prop
  conclusion : boundStateExists

def BetheSalpeterWitnessClosed (O : BetheSalpeterAdmittedObject) : Prop :=
  O.boundStateExists

end BetheSalpeterIntegralEquationsArisingCanonicalLaneLean
end HautevilleHouse