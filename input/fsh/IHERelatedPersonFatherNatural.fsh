Alias: $v3-RoleCode = http://terminology.hl7.org/CodeSystem/v3-RoleCode


Profile: IHERelatedPersonFatherNaturalVitalRecords
Parent: IHE-RelatedPerson-father-vr
Id: RelatedPerson-father-natural-ihe-vr
Title: "RelatedPerson - Father Natural - Vital Records"
Description: "This RelatedPerson profile represents the biological (natural) father of the newborn or fetus."

* relationship 1..1
* relationship = $v3-RoleCode#NFTH
* relationship ^short = "natural father"

