import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BesovSpacesQpSpacesCanonicalLaneLean

structure BesovEmbeddingPackage where
  sourceSpace : Type u
  targetSpace : Type v
  embeddingExists : Prop
  embeddingContinuous : Prop
  embeddingCompact : Prop

structure BesovEmbeddingEvidence (P : BesovEmbeddingPackage) where
  embeddingExistsClosed : P.embeddingExists
  embeddingContinuousClosed : P.embeddingContinuous
  embeddingCompactClosed : P.embeddingCompact

def BesovEmbeddingClosed (P : BesovEmbeddingPackage) : Prop :=
  P.embeddingExists ∧ P.embeddingContinuous ∧ P.embeddingCompact

theorem besov_embedding_closed_from_evidence (P : BesovEmbeddingPackage)
    (E : BesovEmbeddingEvidence P) : BesovEmbeddingClosed P := by
  exact And.intro E.embeddingExistsClosed
    (And.intro E.embeddingContinuousClosed E.embeddingCompactClosed)

end BesovSpacesQpSpacesCanonicalLaneLean
end HautevilleHouse