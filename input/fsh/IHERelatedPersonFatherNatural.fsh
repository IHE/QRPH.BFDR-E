Alias: $v3-RoleCode = http://terminology.hl7.org/CodeSystem/v3-RoleCode


Profile: IHERelatedPersonFatherNaturalVitalRecords
Parent: IHE-RelatedPerson-father-vr
Id: IHE-RelatedPerson-father-natural-vr
Title: "RelatedPerson - Father Natural - Vital Records"
Description: "This RelatedPerson profile represents the biological (natural) father of the newborn or fetus."

* relationship 1..1
* relationship = $v3-RoleCode#NFTH
* relationship ^short = "natural father"

Mapping: rim
Id: rim
Title: "RIM Mapping"
Source: RelatedPersonFatherNaturalVitalRecords
Target: "http://hl7.org/v3"

Mapping: w5
Id: w5
Title: "FiveWs Pattern Mapping"
Source: RelatedPersonFatherNaturalVitalRecords
Target: "http://hl7.org/fhir/fivews"

Mapping: v2
Id: v2
Title: "HL7 v2 Mapping"
Source: RelatedPersonFatherNaturalVitalRecords
Target: "http://hl7.org/v2"