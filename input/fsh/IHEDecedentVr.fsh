Alias: $patient-birthPlace = http://hl7.org/fhir/StructureDefinition/patient-birthPlace
Alias: $VRDR-Partial-date-part-absent-reason = http://hl7.org/fhir/us/vrdr/StructureDefinition/VRDR-Partial-date-part-absent-reason
Alias: $Within-City-Limits-Indicator = http://hl7.org/fhir/us/vrdr/StructureDefinition/Within-City-Limits-Indicator
Alias: $ViewValueSet.action = https://phinvads.cdc.gov/vads/ViewValueSet.action?oid=2.16.840.1.114222.4.11.1038
Alias: $ViewValueSet.action_1 = https://phinvads.cdc.gov/vads/ViewValueSet.action?id=C2F2220B-270F-4BDF-9F8C-D5CB369F7212
Alias: $ViewValueSet.action_2 = https://phinvads.cdc.gov/vads/ViewValueSet.action?oid=2.16.840.1.114222.4.11.7380
Alias: $ViewValueSet.action_3 = https://phinvads.cdc.gov/vads/ViewValueSet.action?oid=2.16.840.1.114222.4.11.8018

Profile: IHEDecedentVr
Parent: Patient
Id: Vrdr-ihe-Decedent
Title: "VRDR Decedent"

* extension contains $patient-birthPlace named patient-birthPlace 0..1
* extension[patient-birthPlace] ^short = "Extension"
* identifier 1..* MS
* name 1..* MS
* gender 1..1
* gender from $ViewValueSet.action (required)
* gender ^definition = "The observed sex (male, female, or unknown) of the decedent at the time of death as determined by the death certifier or authoritative informant."
* gender ^comment = "This item aids in the identification of the decedent. It is also used in research and statistical analysis to determine sex-specific death rates. \n\nThis element differs from the US Core BirthSex element. Birthsex is not a concept required for completion of a death record for submission to NCHS. It is included in the VRDR FHIR IG by virtue of using the US Core Patient as the base profile for Decedent. The US Core IG defined BirthSex as a code classifying the person's sex assigned at birth and declares the element as \"must support\". Labeling an element MustSupport means that implementations that produce or consume resources SHALL provide \"support\" for the element in some meaningful way. For VRDR meaningful support of the US Core BirthSex element would be the inclusion of birth sex as recorded in the decedents birth record, if known. Birthsex is an optional element and need not be completed if it is unknown."
* gender ^binding.description = "PHVS_Sex_MFU"
* birthDate 0..1
* birthDate.extension contains $VRDR-Partial-date-part-absent-reason named partialDatePartAbsentReason 0..1 MS
* birthDate.extension[partialDatePartAbsentReason] ^short = "partialDatePartAbsentReason"
* birthDate.extension[partialDatePartAbsentReason] ^definition = "Indicates reason for missing one or more parts of the decedent's birthdate."
* address 0..*
* address.extension 0..1
* address.extension only $Within-City-Limits-Indicator
* address.city ^comment = "The city portion of the decedent's resident address shall be expressed as a five-digit numeric value greater than zero and less than 100,000."
* address.district from $ViewValueSet.action_1 (required)
* address.district ^binding.description = "PHVS_DivisionVitalStatistics__County"
* maritalStatus 0..1
* maritalStatus only CodeableConcept
* maritalStatus from $ViewValueSet.action_2 (required)
* maritalStatus ^binding.description = "PHVS_MaritalStatus_NCHS"
* contact.relationship 0..1
* contact.relationship only CodeableConcept
* contact.relationship from $ViewValueSet.action_3 (required)
* contact.relationship ^binding.description = "PHVS_RelatedPersonRelationshipType_NCHS"

Mapping: argonaut-dq-dstu2
Id: argonaut-dq-dstu2
Title: "Argonaut-DQ-DSTU2"
Source: IHEDecedentVr
Target: "http://unknown.org/Argonaut-DQ-DSTU2"

Mapping: rim
Id: rim
Title: "RIM Mapping"
Source: IHEDecedentVr
Target: "http://hl7.org/v3"

Mapping: cda
Id: cda
Title: "CDA (R2)"
Source: IHEDecedentVr
Target: "http://hl7.org/v3/cda"

Mapping: w5
Id: w5
Title: "FiveWs Pattern Mapping"
Source: IHEDecedentVr
Target: "http://hl7.org/fhir/fivews"

Mapping: v2
Id: v2
Title: "HL7 v2 Mapping"
Source: IHEDecedentVr
Target: "http://hl7.org/v2"

Mapping: loinc
Id: loinc
Title: "LOINC code for the element"
Source: IHEDecedentVr
Target: "http://loinc.org"