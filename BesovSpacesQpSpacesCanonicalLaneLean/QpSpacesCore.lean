import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BesovSpacesQpSpacesCanonicalLaneLean

structure QpSpace where
  carrier : Type u
  measure : carrier → ℝ
  qpIntegration : Prop
  zeroMeasureSet : Prop

structure BesovSpace (Q : QpSpace) where
  smoothnessIndex : ℝ
  integrabilityIndex : ℝ
  besovNorm : Type v
  embeddingIntoQp : Prop

structure QpBesovContext where
  qpSpace : QpSpace
  besovSpace : BesovSpace qpSpace
  embeddingClosed : Prop

end BesovSpacesQpSpacesCanonicalLaneLean
end HautevilleHouse