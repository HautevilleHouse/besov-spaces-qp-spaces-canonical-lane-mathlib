import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BesovSpacesQpSpacesCanonicalLaneLean

structure BesovSpacePackage where
  domain : Type u
  smoothnessParameter : ℝ
  integrabilityParameter : ℝ
  functionSpace : Type v
  normDefined : Prop
  embeddingIntoQp : Prop

structure BesovSpaceEvidence (B : BesovSpacePackage) where
  normDefinedClosed : B.normDefined
  embeddingIntoQpClosed : B.embeddingIntoQp

def BesovSpaceClosed (B : BesovSpacePackage) : Prop :=
  B.normDefined ∧ B.embeddingIntoQp

theorem besov_space_closed_from_evidence (B : BesovSpacePackage) (E : BesovSpaceEvidence B) :
    BesovSpaceClosed B := by
  exact And.intro E.normDefinedClosed E.embeddingIntoQpClosed

end BesovSpacesQpSpacesCanonicalLaneLean
end HautevilleHouse