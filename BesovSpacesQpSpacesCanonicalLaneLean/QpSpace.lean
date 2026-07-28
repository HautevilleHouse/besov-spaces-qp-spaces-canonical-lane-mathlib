import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BesovSpacesQpSpacesCanonicalLaneLean

structure QpSpacePackage where
  domain : Type u
  exponentParameter : ℝ
  functionSpace : Type v
  normDefined : Prop
  embeddingIntoBesov : Prop

structure QpSpaceEvidence (Q : QpSpacePackage) where
  normDefinedClosed : Q.normDefined
  embeddingIntoBesovClosed : Q.embeddingIntoBesov

def QpSpaceClosed (Q : QpSpacePackage) : Prop :=
  Q.normDefined ∧ Q.embeddingIntoBesov

theorem qp_space_closed_from_evidence (Q : QpSpacePackage) (E : QpSpaceEvidence Q) :
    QpSpaceClosed Q := by
  exact And.intro E.normDefinedClosed E.embeddingIntoBesovClosed

end BesovSpacesQpSpacesCanonicalLaneLean
end HautevilleHouse