Alias: $loinc = http://loinc.org
Alias: $us-core-patient = http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient
Alias: $2.16.840.1.114222.4.11.7137 = http://phinvads.cdc.gov/fhir/ValueSet/2.16.840.1.114222.4.11.7137
Alias: $ValueSet-yes-no-unknown-not-applicable-vr = http://hl7.org/fhir/us/vr-common-library/ValueSet/ValueSet-yes-no-unknown-not-applicable-vr

Profile: IHEObservationAutopsyPerformedIndicatorVitalRecords
Parent: Observation
Id: Observation-autopsy-performed-indicator-ihe-vr
Title: "Observation - Autopsy Performed Indicator - Vital Records"
Description: "This Observation profile represents if an autopsy was performed, if autopsy findings are available, and the autopsy performer (US Core Practioner)."

* status MS
* code = $loinc#85699-7
* code MS
* code ^short = "Autopsy was performed"
* subject 1.. MS
* subject only Reference(Patient or Vrdr-ihe-decedent or Patient-decedent-fetus-ihe-vr)
* performer ..1
* performer only Reference(Practitioner)
* value[x] 1.. MS
* value[x] only CodeableConcept
* value[x] from $2.16.840.1.114222.4.11.7137 (example)
* value[x] ^binding.description = "Autopsy Examination (NCHS)"
* valueCodeableConcept 1..1
* valueCodeableConcept ^short = "Autopsy was performed?"
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains autopsyResultsAvailable 0..1
* component[autopsyResultsAvailable] ^short = "Autopsy Results Available"
* component[autopsyResultsAvailable].code = $loinc#69436-4
* component[autopsyResultsAvailable].code ^short = "Autopsy results available"
* component[autopsyResultsAvailable].value[x] 1..
* component[autopsyResultsAvailable].value[x] only CodeableConcept
* component[autopsyResultsAvailable].value[x] from $ValueSet-yes-no-unknown-not-applicable-vr (required)