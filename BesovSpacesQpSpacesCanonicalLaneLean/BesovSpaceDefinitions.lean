import Mathlib.Analysis.FunctionSpace.Basic

namespace HautevilleHouse
namespace BesovSpacesQpSpacesCanonicalLaneLean

structure BesovParameter where
  regularity : ℝ
  integrability : ℝ
  fineIndex : ℕ

structure BesovNorm where
  parameter : BesovParameter
  normType : Type v
  finiteNormCondition : Prop
  normValue : ℝ

structure BesovSpace (α : Type u) [NormedAddCommGroup α] where
  parameter : BesovParameter
  functions : Set (α → ℝ)
  norm : BesovNorm
  completeness : Prop

structure QpSpace (α : Type u) [NormedAddCommGroup α] where
  q : ℝ
  functions : Set (α → ℝ)
  normDefinition : α → ℝ
  qpIntegralFinite : Prop
  completeness : Prop

end BesovSpacesQpSpacesCanonicalLaneLean
end HautevilleHouse
