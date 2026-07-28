import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BesovSpacesQpSpacesCanonicalLaneLean

structure QpSpaceParameters where
  pAdicPrime : ℕ
  smoothnessIndex : ℝ
  domain : Type u
  topology : TopologicalSpace domain

default

structure QpSpace (q : QpSpaceParameters) where
  norm : (q.domain → ℝ) → ℝ
  completeness : Prop
  embeddings : Prop

default

end BesovSpacesQpSpacesCanonicalLaneLean
end HautevilleHouse
