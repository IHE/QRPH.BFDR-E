Alias: $v3-RoleCode = http://terminology.hl7.org/CodeSystem/v3-RoleCode


Profile: IHERelatedPersonMotherGestationalVitalRecords
Parent: RelatedPerson-mother-ihe-vr
Id: RelatedPerson-mother-gestational-ihe-vr
Title: "RelatedPerson - Mother Gestational - Vital Records"
Description: "This RelatedPerson profile represents the woman who gave birth to or delivered the infant. The RelatedPerson structure is required in order to link the mother to the newborn or fetus."

* relationship 1..1
* relationship = $v3-RoleCode#GESTM
* relationship ^short = "gestational mother"
* relationship ^definition = "The player of the role is a female whose womb carries the fetus of the scoping entity (child)."

