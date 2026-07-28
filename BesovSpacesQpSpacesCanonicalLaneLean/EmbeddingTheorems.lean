import BesovSpacesQpSpacesCanonicalLaneLean.BesovSpaceDefinitions

namespace HautevilleHouse
namespace BesovSpacesQpSpacesCanonicalLaneLean

structure SobolevBesovEmbedding where
  sourceSpace : BesovSpace ℝ
  targetSpace : BesovSpace ℝ
  embeddingContinuous : Prop
  embeddingCompact : Prop

structure QpEmbedding where
  sourceQp : QpSpace ℝ
  targetBesov : BesovSpace ℝ
  embeddingExists : Prop
  embeddingNormBound : ℝ
  embeddingProof : embeddingExists

end BesovSpacesQpSpacesCanonicalLaneLean
end HautevilleHouse
