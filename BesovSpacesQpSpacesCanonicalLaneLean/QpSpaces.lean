import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BesovSpacesQpSpacesCanonicalLaneLean

structure QpSpacePackage where
  p : ℝ
  pGreaterThanOne : p > 1
  spaceType : Type u
  normDefined : Prop
  completeness : Prop

structure QpSpaceEvidence (Q : QpSpacePackage) where
  normDefinedClosed : Q.normDefined
  completenessClosed : Q.completeness

def QpSpaceClosed (Q : QpSpacePackage) : Prop :=
  Q.normDefined ∧ Q.completeness

theorem qp_space_closed_from_evidence (Q : QpSpacePackage)
    (E : QpSpaceEvidence Q) : QpSpaceClosed Q := by
  exact And.intro E.normDefinedClosed E.completenessClosed

end BesovSpacesQpSpacesCanonicalLaneLean
end HautevilleHouse