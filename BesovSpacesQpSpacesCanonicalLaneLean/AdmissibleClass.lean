import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BesovSpacesQpSpacesCanonicalLaneLean.BesovSpaceCore
import HautevilleHouse.BesovSpacesQpSpacesCanonicalLaneLean.QpSpaceCore

namespace HautevilleHouse
namespace BesovSpacesQpSpacesCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure BesovSpaceAdmittedObject where
  besovParams : BesovSpaceParameters
  qpParams : QpSpaceParameters
  besovClosed : BesovSpace besovParams
  qpClosed : QpSpace qpParams
  embeddingTheorem : EmbeddingTheorem besovParams qpParams
  embeddingClosed : EmbeddingClosed besovParams qpParams embeddingTheorem

default

structure AdmissibleClass where
  object : BesovSpaceAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.besovClosed.completeness ∧ A.object.qpClosed.completeness ∧ A.embeddingClosed

end BesovSpacesQpSpacesCanonicalLaneLean
end HautevilleHouse
