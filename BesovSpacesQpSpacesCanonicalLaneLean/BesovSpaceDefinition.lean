import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BesovSpacesQpSpacesCanonicalLaneLean

structure BesovSpacePackage where
  index : Type
  smoothness : Prop
  integrability : Prop
  norm : Type
  completeness : Prop
  embeddingIntoQp : Prop

structure BesovSpaceEvidence (B : BesovSpacePackage) where
  smoothnessClosed : B.smoothness
  integrabilityClosed : B.integrability
  completenessClosed : B.completeness
  embeddingIntoQpClosed : B.embeddingIntoQp

def BesovSpaceClosed (B : BesovSpacePackage) : Prop :=
  B.smoothness ∧ B.integrability ∧ B.completeness ∧ B.embeddingIntoQp

theorem besov_space_closed_from_evidence (B : BesovSpacePackage) (E : BesovSpaceEvidence B) :
    BesovSpaceClosed B := by
  exact And.intro E.smoothnessClosed (And.intro E.integrabilityClosed (And.intro E.completenessClosed E.embeddingIntoQpClosed))

end BesovSpacesQpSpacesCanonicalLaneLean
end HautevilleHouse