Profile: IHEObservationContributingCauseOfDeathPart2VitalRecords
Parent: Observation
Id: Observation-contributing-cause-of-death-part2-ihe-vr
Title: "Observation - Contributing Cause of Death Part 2 - Vital Records"
Description: "This Observation profile represents represents factors contributing to the cause of death as asserted by the death certifier."

* status MS
* code = $loinc#69441-4
* code MS
* subject 1.. MS
* subject only Reference(Patient or Vrdr-ihe-decedent)
* subject ^label = "The decedent"
* subject ^short = "The decedent"
* performer only Reference(Practitioner or Vrdr-ihe-certifier)
* performer MS
* performer ^label = "Death certifier"
* performer ^short = "Death certifier"
* value[x] 1.. MS
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept.text 1..
* valueCodeableConcept.text ^short = "Cause of Death Part 2"
* valueCodeableConcept.text ^maxLength = 240