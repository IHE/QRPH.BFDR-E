Alias: $BypassEditFlag = http://hl7.org/fhir/us/vrdr/StructureDefinition/BypassEditFlag
Alias: $ValueSet-death-pregnancy-status-vr = http://hl7.org/fhir/us/vr-common-library/ValueSet/ValueSet-death-pregnancy-status-vr
Alias: $vrdr-edit-bypass-012-vs = http://hl7.org/fhir/us/vrdr/ValueSet/vrdr-edit-bypass-012-vs

Profile: IHEObservationDecedentPregnancyVitalRecords
Parent: Observation
Id: Observation-decedent-pregnancy-ihe-vr
Title: "Observation - Decedent Pregnancy - Vital Records"
Description: "This Observation profile represents the pregnancy status of the decedent."

* status MS
* code 1..1 MS
* code only CodeableConcept
* code = $loinc#69442-2
* code ^short = "Timing of recent pregnancy in relation to death"
* subject 1..1 MS
* subject only Reference(Patient or Vrdr-ihe-decedent)
* value[x] 1..1 MS
* value[x] only CodeableConcept
* value[x] from $ValueSet-death-pregnancy-status-vr (required)
* value[x] ^short = "Whether the decedent was pregnant at or around the time of death."
* value[x] ^binding.description = "A set of codes that reflect whether the decedent was pregnant at or around the time of death."
* value[x].extension contains $BypassEditFlag named bypassEditFlag 0..1
* value[x].extension[bypassEditFlag].value[x] from $vrdr-edit-bypass-012-vs (required)