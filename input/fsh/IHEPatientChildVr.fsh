Alias: $v2-0203 = http://terminology.hl7.org/CodeSystem/v2-0203
Alias: $patient-birthPlace = http://hl7.org/fhir/StructureDefinition/patient-birthPlace
Alias: $Extension-reported-parent-age-at-delivery-vr = http://hl7.org/fhir/us/vr-common-library/StructureDefinition/Extension-reported-parent-age-at-delivery-vr
Alias: $data-absent-reason = http://hl7.org/fhir/StructureDefinition/data-absent-reason
Alias: $Extension-partial-date-vr = http://hl7.org/fhir/us/vr-common-library/StructureDefinition/Extension-partial-date-vr
Alias: $patient-birthTime = http://hl7.org/fhir/StructureDefinition/patient-birthTime
Alias: $patient-multipleBirthTotal = http://hl7.org/fhir/StructureDefinition/patient-multipleBirthTotal

Profile: IHEPatientChildVitalRecords
Parent: Patient
Id: IHE-Patient-child-vr
Title: "Patient - Child - Vital Records"
Description: "This Patient profile represents the subject patient (newborn/infant/child) for whom clinical data is included in the report."
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    race 0..1 and
    ethnicity 0..1 and
    birthsex 1..1 MS and
    $patient-birthPlace named birthPlace 0..1 MS and
    $Extension-reported-parent-age-at-delivery-vr named parentReportedAgeAtDelivery 0..2
* extension[birthPlace] ^short = "Place of Birth for the patient should include the state and/or country"
* extension[parentReportedAgeAtDelivery] ^short = "The mother or father's reported age at the time of delivery of the child"
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "type"
* identifier ^slicing.description = "Slice based on ID type"
* identifier ^slicing.ordered = false
* identifier ^slicing.rules = #open
* identifier contains MRN 0..*
* identifier[MRN] ^short = "Medical Record Number"
* identifier[MRN].type 1..
* identifier[MRN].type = $v2-0203#MR
* name MS
* name.family 1.. MS
* name.family.extension ^slicing.discriminator.type = #value
* name.family.extension ^slicing.discriminator.path = "url"
* name.family.extension ^slicing.rules = #open
* name.family.extension contains $data-absent-reason named dataAbsentReason 0..1 MS
* name.family.extension[dataAbsentReason] ^short = "When \"name not chosen\" use code \"temp-unknown\""
* name.given MS
* name.given.extension ^slicing.discriminator.type = #value
* name.given.extension ^slicing.discriminator.path = "url"
* name.given.extension ^slicing.rules = #open
* name.given.extension contains $data-absent-reason named dataAbsentReason 0..1 MS
* name.given.extension[dataAbsentReason] ^short = "When \"name not chosen\" use code \"temp-unknown\""
* birthDate 1..
* birthDate.extension contains
    $Extension-partial-date-vr named partialDate 0..* MS and
    $patient-birthTime named birthTime 0..1 MS
* birthDate.extension[partialDate] ^short = "Provides values of a partial date"
* birthDate.extension[partialDate] ^definition = "Indicates reason for missing data on either the birthDate or the birthTime."
* deceased[x] MS
* deceased[x] ^short = "Indicates if the individual is deceased or not, dateTime is preferred"
* multipleBirth[x] only integer
* multipleBirth[x] MS
* multipleBirth[x] ^short = "If not single delivery- born first, second, third, etc."
* multipleBirth[x] ^definition = "If not single delivery, specify delivered 1st, 2nd, etc. – for multiple deliveries, the order this infant was delivered in the set. Include all live births and fetal losses."
* multipleBirth[x].extension contains $patient-multipleBirthTotal named multipleBirthTotal 0..1 MS
* multipleBirth[x].extension[multipleBirthTotal] ^short = "Where a patient is a part of a multiple delivery, this is the total number of deliveries that occurred in this pregnancy."
* multipleBirth[x].extension[multipleBirthTotal] ^definition = "Where a patient is a part of a multiple delivery, this is the total number of deliveries that occurred in this pregnancy."

Mapping: rim
Id: rim
Title: "RIM Mapping"
Source: PatientChildVitalRecords
Target: "http://hl7.org/v3"

Mapping: cda
Id: cda
Title: "CDA (R2)"
Source: PatientChildVitalRecords
Target: "http://hl7.org/v3/cda"

Mapping: w5
Id: w5
Title: "FiveWs Pattern Mapping"
Source: PatientChildVitalRecords
Target: "http://hl7.org/fhir/fivews"

Mapping: v2
Id: v2
Title: "HL7 v2 Mapping"
Source: PatientChildVitalRecords
Target: "http://hl7.org/v2"

Mapping: loinc
Id: loinc
Title: "LOINC code for the element"
Source: PatientChildVitalRecords
Target: "http://loinc.org"