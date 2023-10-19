Alias: $v3-RoleCode = http://terminology.hl7.org/CodeSystem/v3-RoleCode


Profile: IHERelatedPersonMotherGestationalVitalRecords
Parent: IHE-RelatedPerson-mother-vr
Id: IHE-RelatedPerson-mother-gestational-vr
Title: "RelatedPerson - Mother Gestational - Vital Records"
Description: "This RelatedPerson profile represents the woman who gave birth to or delivered the infant. The RelatedPerson structure is required in order to link the mother to the newborn or fetus."

* relationship 1..1
* relationship = $v3-RoleCode#GESTM
* relationship ^short = "gestational mother"
* relationship ^definition = "The player of the role is a female whose womb carries the fetus of the scoping entity (child)."

Mapping: rim
Id: rim
Title: "RIM Mapping"
Source: RelatedPersonMotherGestationalVitalRecords
Target: "http://hl7.org/v3"

Mapping: w5
Id: w5
Title: "FiveWs Pattern Mapping"
Source: RelatedPersonMotherGestationalVitalRecords
Target: "http://hl7.org/fhir/fivews"

Mapping: v2
Id: v2
Title: "HL7 v2 Mapping"
Source: RelatedPersonMotherGestationalVitalRecords
Target: "http://hl7.org/v2"