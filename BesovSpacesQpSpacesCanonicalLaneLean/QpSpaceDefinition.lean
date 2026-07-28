import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BesovSpacesQpSpacesCanonicalLaneLean

structure QpSpacePackage where
  prime : ℕ
  valuation : Type
  topology : Type
  completeness : Prop
  locallyCompact : Prop
  embeddingOfBesov : Prop

structure QpSpaceEvidence (Q : QpSpacePackage) where
  completenessClosed : Q.completeness
  locallyCompactClosed : Q.locallyCompact
  embeddingOfBesovClosed : Q.embeddingOfBesov

def QpSpaceClosed (Q : QpSpacePackage) : Prop :=
  Q.completeness ∧ Q.locallyCompact ∧ Q.embeddingOfBesov

theorem qp_space_closed_from_evidence (Q : QpSpacePackage) (E : QpSpaceEvidence Q) :
    QpSpaceClosed Q := by
  exact And.intro E.completenessClosed (And.intro E.locallyCompactClosed E.embeddingOfBesovClosed)

end BesovSpacesQpSpacesCanonicalLaneLean
end HautevilleHouse