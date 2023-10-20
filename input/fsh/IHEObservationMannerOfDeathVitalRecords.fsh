Alias: $ValueSet-manner-of-death-vr = http://hl7.org/fhir/us/vr-common-library/ValueSet/ValueSet-manner-of-death-vr

Profile: IHEObservationMannerOfDeathVitalRecords
Parent: Observation
Id: Observation-manner-of-death-ihe-vr
Title: "Observation - Manner of Death - Vital Records"
Description: "This Observation profile represents the conclusion arrived at upon completion of death investigation regarding the manner of death (e.g., natural, homicide, suicide, accident)."

* status 1..1 MS
* status only code
* status ^label = "Status of the manner of death determination"
* status ^short = "Status of the manner of death determination"
* code 1..1 MS
* code only CodeableConcept
* code = $loinc#69449-7
* code ^short = "Manner of death"
* subject 1..1 MS
* subject only Reference(Patient or Vrdr-ihe-decedent)
* subject ^label = "The decedent"
* subject ^short = "The decedent"
* performer 1..1 MS
* performer only Reference(Practitioner or Vrdr-ihe-certifier)
* performer ^label = "Death certifier"
* performer ^short = "Death certifier"
* performer ^definition = "Manner of death certifier"
* value[x] 1..1 MS
* value[x] only CodeableConcept
* value[x] from $ValueSet-manner-of-death-vr (required)
* value[x] ^label = "Manner of Death value set"
* value[x] ^short = "Manner of Death value set"
* value[x] ^binding.description = "A set of codes to reflect the manner that a person died."
