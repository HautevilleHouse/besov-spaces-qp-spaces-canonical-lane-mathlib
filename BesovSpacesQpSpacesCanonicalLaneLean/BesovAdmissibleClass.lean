import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BesovSpacesQpSpacesCanonicalLaneLean

structure BesovAdmittedObject where
  besovSpace : Type
  qpSpace : Type
  embedding : Type
  conclusion : BesovEmbeddingClosed (embedding : BesovEmbeddingPackage (besovSpace : BesovSpacePackage) (qpSpace : QpSpacePackage))

structure AdmissibleClass where
  object : BesovAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.conclusion) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BesovSpacesQpSpacesCanonicalLaneLean
end HautevilleHouse