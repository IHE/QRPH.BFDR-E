Alias: $v3-RoleCode = http://terminology.hl7.org/CodeSystem/v3-RoleCode


Profile: IHERelatedPersonFatherNaturalVitalRecords
Parent: IHE-RelatedPerson-father-vr
Id: RelatedPerson-father-natural-ihe-vr
Title: "RelatedPerson - Father Natural - Vital Records"
Description: "This RelatedPerson profile represents the biological (natural) father of the newborn or fetus."

* relationship 1..1
* relationship = $v3-RoleCode#NFTH
* relationship ^short = "natural father"

Mapping: rim
Id: rim
Title: "RIM Mapping"
Source: IHERelatedPersonFatherNaturalVitalRecords
Target: "http://hl7.org/v3"

Mapping: w5
Id: w5
Title: "FiveWs Pattern Mapping"
Source: IHERelatedPersonFatherNaturalVitalRecords
Target: "http://hl7.org/fhir/fivews"

Mapping: v2
Id: v2
Title: "HL7 v2 Mapping"
Source: IHERelatedPersonFatherNaturalVitalRecords
Target: "http://hl7.org/v2"