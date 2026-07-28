import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BesovSpacesQpSpacesCanonicalLaneLean.BesovSpaceCore
import HautevilleHouse.BesovSpacesQpSpacesCanonicalLaneLean.QpSpaceCore

namespace HautevilleHouse
namespace BesovSpacesQpSpacesCanonicalLaneLean

structure EmbeddingTheorem (B : BesovSpaceParameters) (Q : QpSpaceParameters) where
  continuousEmbeddingExists : Prop
  compactEmbedding : Prop

default

structure EmbeddingEvidence (B : BesovSpaceParameters) (Q : QpSpaceParameters) (E : EmbeddingTheorem B Q) where
  continuousEmbeddingClosed : E.continuousEmbeddingExists
  compactEmbeddingClosed : E.compactEmbedding

default

def EmbeddingClosed (B : BesovSpaceParameters) (Q : QpSpaceParameters) (E : EmbeddingTheorem B Q) : Prop :=
  E.continuousEmbeddingExists ∧ E.compactEmbedding

theorem embedding_closed_from_evidence (B : BesovSpaceParameters) (Q : QpSpaceParameters) (E : EmbeddingTheorem B Q) (ev : EmbeddingEvidence B Q E) :
    EmbeddingClosed B Q E := by
  exact And.intro ev.continuousEmbeddingClosed ev.compactEmbeddingClosed

end BesovSpacesQpSpacesCanonicalLaneLean
end HautevilleHouse
