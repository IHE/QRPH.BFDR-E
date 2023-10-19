Alias: $ValueSet-father-relationship-vr = http://hl7.org/fhir/us/vr-common-library/ValueSet/ValueSet-father-relationship-vr

Profile: IHERelatedPersonFatherVitalRecords
Parent: IHE-RelatedPerson-parent-vr
Id: IHE-RelatedPerson-father-vr
Title: "RelatedPerson - Father - Vital Records"
Description: "This RelatedPerson profile represents the father of the subject (patient). Different individuals may play different roles as the father (e.g., biological father, adoptive father, etc.)."

* relationship from $ValueSet-father-relationship-vr (required)
* relationship ^short = "Relationships describing the father's role relative to the subject."
* relationship ^binding.description = "FatherRelationship"

Mapping: rim
Id: rim
Title: "RIM Mapping"
Source: RelatedPersonFatherVitalRecords
Target: "http://hl7.org/v3"

Mapping: w5
Id: w5
Title: "FiveWs Pattern Mapping"
Source: RelatedPersonFatherVitalRecords
Target: "http://hl7.org/fhir/fivews"

Mapping: v2
Id: v2
Title: "HL7 v2 Mapping"
Source: RelatedPersonFatherVitalRecords
Target: "http://hl7.org/v2"