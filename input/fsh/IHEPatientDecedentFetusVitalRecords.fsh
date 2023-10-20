Alias: $patient-birthPlace = http://hl7.org/fhir/StructureDefinition/patient-birthPlace
Alias: $Extension-reported-parent-age-at-delivery-vr = http://hl7.org/fhir/us/vr-common-library/StructureDefinition/Extension-reported-parent-age-at-delivery-vr
Alias: $Extension-patient-fetal-death-vr = http://hl7.org/fhir/us/vr-common-library/StructureDefinition/Extension-patient-fetal-death-vr
Alias: $data-absent-reason = http://hl7.org/fhir/StructureDefinition/data-absent-reason
Alias: $patient-birthTime = http://hl7.org/fhir/StructureDefinition/patient-birthTime
Alias: $patient-multipleBirthTotal = http://hl7.org/fhir/StructureDefinition/patient-multipleBirthTotal

Profile: IHEPatientDecedentFetusVitalRecords
Parent: Patient
Id: Patient-decedent-fetus-ihe-vr
Title: "Patient - Decedent Fetus - Vital Records"
Description: "This Patient profile represents a delivered fetus for which clinical data is included in the report."
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    $patient-birthPlace named birthPlace 0..1 MS and
    $Extension-reported-parent-age-at-delivery-vr named parentReportedAgeAtDelivery 0..2 MS and
    $Extension-patient-fetal-death-vr named fetalDeath 1..1 MS
* extension[birthPlace] ^short = "Place of delivery should include the state and/or country"
* extension[parentReportedAgeAtDelivery] ^short = "The mother or father's reported age at the time of delivery of the fetus"
* extension[fetalDeath] ^short = "Indicates that the patient is a fetal death"
* name MS
* name.family 1..
* name.family ^short = "When child not named use code \"unknown\""
* name.family.extension ^slicing.discriminator.type = #value
* name.family.extension ^slicing.discriminator.path = "url"
* name.family.extension ^slicing.rules = #open
* name.family.extension contains $data-absent-reason named dataAbsentReason 0..1 MS
* name.given ^short = "When child not named use code \"unknown\""
* name.given.extension ^slicing.discriminator.type = #value
* name.given.extension ^slicing.discriminator.path = "url"
* name.given.extension ^slicing.rules = #open
* name.given.extension contains $data-absent-reason named dataAbsentReason 0..1 MS
* birthDate 1..
* birthDate ^short = "Date of delivery (fetus)"
* birthDate ^definition = "The fetus' date of delivery"
* birthDate.extension contains $patient-birthTime named birthTime 0..1 MS
* deceased[x] 1.. MS
* deceased[x] only boolean
* deceased[x] = true (exactly)
* deceased[x] ^short = "The fetus is deceased"
* multipleBirth[x] only integer
* multipleBirth[x] MS
* multipleBirth[x] ^short = "If not single delivery- born first, second, third, etc."
* multipleBirth[x] ^definition = "If not single delivery, specify delivered 1st, 2nd, etc. – for multiple deliveries, the order this infant was delivered in the set. Include all live births and fetal losses."
* multipleBirth[x].extension contains $patient-multipleBirthTotal named multipleBirthTotal 0..1 MS
* multipleBirth[x].extension[multipleBirthTotal] ^short = "Where a patient is a part of a multiple delivery, this is the total number of deliveries that occurred in this pregnancy."

