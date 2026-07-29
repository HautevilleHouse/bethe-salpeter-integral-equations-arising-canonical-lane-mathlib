import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BetheSalpeterIntegralEquationsArisingCanonicalLaneLean

structure BetheSalpeterSpace where
  momentumSpace : Type
  topology : TopologicalSpace momentumSpace

structure BetheSalpeterAdmittedObject where
  space : BetheSalpeterSpace
  kernelExistence : Prop
  amplitudeExistence : Prop
  spectralParameter : Prop
  conclusion : kernelExistence ∧ amplitudeExistence ∧ spectralParameter

end BetheSalpeterIntegralEquationsArisingCanonicalLaneLean
end HautevilleHouse