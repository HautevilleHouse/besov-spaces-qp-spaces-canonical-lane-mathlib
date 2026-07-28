import HautevilleHouse.BesovSpacesQpSpacesCanonicalLaneLean.QpSpacesCore
import HautevilleHouse.BesovSpacesQpSpacesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BesovSpacesQpSpacesCanonicalLaneLean

structure BesovEmbeddingPackage (C : QpBesovContext) where
  sobolevEmbedding : Prop
  fractionalEmbedding : Prop
  compactnessEmbedding : Prop
  interpolationEmbedding : Prop

structure BesovEmbeddingEvidence (C : QpBesovContext) (P : BesovEmbeddingPackage C) where
  sobolevEmbeddingClosed : P.sobolevEmbedding
  fractionalEmbeddingClosed : P.fractionalEmbedding
  compactnessEmbeddingClosed : P.compactnessEmbedding
  interpolationEmbeddingClosed : P.interpolationEmbedding

def BesovEmbeddingsClosed (C : QpBesovContext) (P : BesovEmbeddingPackage C) : Prop :=
  P.sobolevEmbedding ∧ P.fractionalEmbedding ∧ P.compactnessEmbedding ∧ P.interpolationEmbedding

theorem besov_embeddings_closed_from_evidence (C : QpBesovContext) (P : BesovEmbeddingPackage C)
    (E : BesovEmbeddingEvidence C P) : BesovEmbeddingsClosed C P := by
  exact And.intro E.sobolevEmbeddingClosed
    (And.intro E.fractionalEmbeddingClosed
      (And.intro E.compactnessEmbeddingClosed E.interpolationEmbeddingClosed))

end BesovSpacesQpSpacesCanonicalLaneLean
end HautevilleHouse