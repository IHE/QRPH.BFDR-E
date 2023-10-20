Alias: $ValueSet-mother-relationship-vr = http://hl7.org/fhir/us/vr-common-library/ValueSet/ValueSet-mother-relationship-vr

Profile: IHERelatedPersonMotherVitalRecords
Parent: IHERelatedPersonParent
Id: RelatedPerson-mother-ihe-vr
Title: "RelatedPerson - Mother - Vital Records"
Description: "This RelatedPerson profile represents the mother of the report subject. Different individuals may play different roles as the mother (e.g., biological mother, adoptive mother, etc.)."

* relationship from $ValueSet-mother-relationship-vr (required)
* relationship ^short = "Relationships describing the mother's role relative to the subject."
* relationship ^binding.description = "MotherRelationship"
* gender MS
* communication MS

