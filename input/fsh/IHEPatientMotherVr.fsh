Alias: $v2-0203 = http://terminology.hl7.org/CodeSystem/v2-0203
Alias: $patient-birthPlace = http://hl7.org/fhir/StructureDefinition/patient-birthPlace
Alias: $Extension-partial-date-vr = http://hl7.org/fhir/us/vr-common-library/StructureDefinition/Extension-partial-date-vr
Alias: $Extension-within-city-limits-indicator-vr = http://hl7.org/fhir/us/vr-common-library/StructureDefinition/Extension-within-city-limits-indicator-vr

Profile: IHEPatientMotherVitalRecords
Parent: Patient
Id: IHE-Patient-mother-vr
Title: "Patient - Mother - Vital Records"
Description: "This Patient profile represents the woman who gave birth to, or delivered the infant."
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    race 0..1 and
    ethnicity 0..1 and
    $patient-birthPlace named birthPlace 0..1 MS
* extension[race] ^short = "If race is unknown, use UNK from the bound value set."
* extension[ethnicity] ^short = "If ethnicity is unknown omit both coded data fields."
* extension[birthPlace] ^short = "Place of Birth for the patient should include the state and/or country"
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "type"
* identifier ^slicing.description = "Slice based on ID type"
* identifier ^slicing.ordered = false
* identifier ^slicing.rules = #open
* identifier contains
    MRN 0..* MS and
    NI 0..1 MS
* identifier[MRN] ^short = "Medical Record Number"
* identifier[MRN].type 1.. MS
* identifier[MRN].type = $v2-0203#MR
* identifier[NI] ^short = "National Identifier if available and appropriate to send"
* identifier[NI].type 1.. MS
* identifier[NI].type = $v2-0203#NI

* name ^slicing.discriminator.type = #value
* name ^slicing.discriminator.path = "use"
* name ^slicing.rules = #open
* name.family 1..
* name contains
    currentLegalName 0..1 MS and
    namePriorToFirstMarriage 0..1 MS
* name[currentLegalName] ^short = "Mother's current legal name"
* name[currentLegalName].use 1..1 MS
* name[currentLegalName].use = #official (exactly)
* name[currentLegalName].use ^short = "Mother's name prior to first marriage"
* name[namePriorToFirstMarriage].use 1.. MS
* name[namePriorToFirstMarriage].use = #maiden (exactly)
* birthDate 1..
* birthDate.extension contains $Extension-partial-date-vr named partialDate 0..* MS
* birthDate.extension[partialDate] ^short = "Provides values of a partial date"
* birthDate.extension[partialDate] ^definition = "Indicates reason for missing data on either the birthDate or the birthTime."
* deceased[x] MS
* deceased[x] ^short = "Indicates if the individual is deceased or not, dateTime is preferred"
* address.extension contains $Extension-within-city-limits-indicator-vr named withinCityLimitsIndicator 0..1 MS
* address.extension[withinCityLimitsIndicator] ^short = "Used to indicate whether or not an address is within city limits."
* address.extension[withinCityLimitsIndicator] ^definition = "Used to indicate whether or not an address is within city limits."
* link MS
* link ^slicing.discriminator.type = #pattern
* link ^slicing.discriminator.path = "type"
* link ^slicing.description = "Slice based on link type"
* link ^slicing.ordered = false
* link ^slicing.rules = #open
* link contains mother 0..1 MS
* link[mother] ^short = "Link to the birth mother's RelatedPerson record"
* link[mother].other only Reference(IHE-RelatedPerson-mother-vr)
* link[mother].other MS
* link[mother].other ^type.extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-hierarchy"
* link[mother].other ^type.extension.valueBoolean = false
* link[mother].type = #seealso
* link[mother].type MS

Mapping: rim
Id: rim
Title: "RIM Mapping"
Source: PatientMotherVitalRecords
Target: "http://hl7.org/v3"

Mapping: cda
Id: cda
Title: "CDA (R2)"
Source: PatientMotherVitalRecords
Target: "http://hl7.org/v3/cda"

Mapping: w5
Id: w5
Title: "FiveWs Pattern Mapping"
Source: PatientMotherVitalRecords
Target: "http://hl7.org/fhir/fivews"

Mapping: v2
Id: v2
Title: "HL7 v2 Mapping"
Source: PatientMotherVitalRecords
Target: "http://hl7.org/v2"

Mapping: loinc
Id: loinc
Title: "LOINC code for the element"
Source: PatientMotherVitalRecords
Target: "http://loinc.org"