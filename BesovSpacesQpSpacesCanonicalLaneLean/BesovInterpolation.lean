import HautevilleHouse.BesovSpacesQpSpacesCanonicalLaneLean.QpSpacesCore
import HautevilleHouse.BesovSpacesQpSpacesCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace BesovSpacesQpSpacesCanonicalLaneLean

structure BesovInterpolationPackage (C : QpBesovContext) where
  realInterpolation : Prop
  complexInterpolation : Prop
  reiterationTheorem : Prop
  endpointTrace : Prop

structure BesovInterpolationEvidence (C : QpBesovContext) (I : BesovInterpolationPackage C) where
  realInterpolationClosed : I.realInterpolation
  complexInterpolationClosed : I.complexInterpolation
  reiterationTheoremClosed : I.reiterationTheorem
  endpointTraceClosed : I.endpointTrace

def BesovInterpolationClosed (C : QpBesovContext) (I : BesovInterpolationPackage C) : Prop :=
  I.realInterpolation ∧ I.complexInterpolation ∧ I.reiterationTheorem ∧ I.endpointTrace

theorem besov_interpolation_closed_from_evidence (C : QpBesovContext) (I : BesovInterpolationPackage C)
    (E : BesovInterpolationEvidence C I) : BesovInterpolationClosed C I := by
  exact And.intro E.realInterpolationClosed
    (And.intro E.complexInterpolationClosed
      (And.intro E.reiterationTheoremClosed E.endpointTraceClosed))

end BesovSpacesQpSpacesCanonicalLaneLean
end HautevilleHouse