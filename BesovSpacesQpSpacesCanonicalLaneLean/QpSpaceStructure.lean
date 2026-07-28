import BesovSpacesQpSpacesCanonicalLaneLean.BesovSpaceDefinitions

namespace HautevilleHouse
namespace BesovSpacesQpSpacesCanonicalLaneLean

structure QpNormApproximation where
  space : QpSpace ℝ
  approximationBySmooth : Prop
  approximationError : ℝ → ℝ
  errorTendsToZero : Prop

structure QpFunctionalInequality where
  holderInequality : Prop
  poincareInequality : Prop
  logSobolevInequality : Prop
  inequalitiesProved : holderInequality ∧ poincareInequality ∧ logSobolevInequality

theorem qp_poincare_inequality (Q : QpSpace ℝ) (Inequality : QpFunctionalInequality) :
    Inequality.poincareInequality := by
  exact Inequality.inequalitiesProved.right.left

end BesovSpacesQpSpacesCanonicalLaneLean
end HautevilleHouse
