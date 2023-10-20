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

Mapping: rim
Id: rim
Title: "RIM Mapping"
Source: IHERelatedPersonMotherVitalRecords
Target: "http://hl7.org/v3"

Mapping: w5
Id: w5
Title: "FiveWs Pattern Mapping"
Source: IHERelatedPersonMotherVitalRecords
Target: "http://hl7.org/fhir/fivews"

Mapping: v2
Id: v2
Title: "HL7 v2 Mapping"
Source: IHERelatedPersonMotherVitalRecords
Target: "http://hl7.org/v2"