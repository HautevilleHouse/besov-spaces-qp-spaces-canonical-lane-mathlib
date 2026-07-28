import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BesovSpacesQpSpacesCanonicalLaneLean

structure EmbeddingPackage where
  besov : BesovSpacePackage
  qp : QpSpacePackage
  embeddingExists : Prop
  embeddingBounded : Prop

structure EmbeddingEvidence (E : EmbeddingPackage) where
  embeddingExistsClosed : E.embeddingExists
  embeddingBoundedClosed : E.embeddingBounded

def EmbeddingClosed (E : EmbeddingPackage) : Prop :=
  E.embeddingExists ∧ E.embeddingBounded

theorem embedding_closed_from_evidence (E : EmbeddingPackage) (Ev : EmbeddingEvidence E) :
    EmbeddingClosed E := by
  exact And.intro Ev.embeddingExistsClosed Ev.embeddingBoundedClosed

end BesovSpacesQpSpacesCanonicalLaneLean
end HautevilleHouse