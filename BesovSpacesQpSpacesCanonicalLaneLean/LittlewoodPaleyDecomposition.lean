import BesovSpacesQpSpacesCanonicalLaneLean.BesovSpaceDefinitions

namespace HautevilleHouse
namespace BesovSpacesQpSpacesCanonicalLaneLean

structure DyadicPartition where
  dyadicIndex : ℤ → Set ℝ
  supportCondition : Prop
  sumToOne : Prop

structure LittlewoodPaleyOperator where
  partition : DyadicPartition
  convolutionKernel : Type u
  frequencyCutoff : ℝ
  boundedOnBesov : Prop

structure BesovCharacterization where
  space : BesovSpace ℝ
  operator : LittlewoodPaleyOperator
  normEquivalence : Prop
  equivalenceProof : normEquivalence

end BesovSpacesQpSpacesCanonicalLaneLean
end HautevilleHouse
