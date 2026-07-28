import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BesovSpacesQpSpacesCanonicalLaneLean

structure BesovSpaceParameters where
  smoothnessIndex : ℝ
  integrabilityIndex : ℝ
  fineIndex : ℝ
  domain : Type u
  measure : domain → ℝ

default

structure BesovSpace (p : BesovSpaceParameters) where
  norm : (p.domain → ℝ) → ℝ
  completeness : Prop
  embeddings : Prop

default

end BesovSpacesQpSpacesCanonicalLaneLean
end HautevilleHouse
