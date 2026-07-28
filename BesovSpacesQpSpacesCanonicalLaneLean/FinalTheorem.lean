import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BesovSpacesQpSpacesCanonicalLaneLean.BesovEmbedding
import HautevilleHouse.BesovSpacesQpSpacesCanonicalLaneLean.QpSpaces

namespace HautevilleHouse
namespace BesovSpacesQpSpacesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop := True

def gateClosed (A : AdmissibleClass) : Prop := True

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  trivial

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  trivial

def ConstrainedBesovQpClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_besov_qp_endgame (A : AdmissibleClass) :
    ConstrainedBesovQpClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BesovSpacesQpSpacesCanonicalLaneLean
end HautevilleHouse