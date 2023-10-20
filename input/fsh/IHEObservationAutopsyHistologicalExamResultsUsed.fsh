Alias: $ValueSet-yes-no-not-applicable = http://hl7.org/fhir/us/bfdr/ValueSet/ValueSet-yes-no-not-applicable

Profile: IHEObservationAutopsyHistologicalExamResultsUsed
Parent: Observation
Id: Observation-autopsy-histological-exam-results-used-ihe
Title: "Observation - Autopsy or Histological Exam Results Used"
Description: "This Observation profile represents whether or not the results of a performed autopsy or a performed histological placental examination were used as part of determining the cause of death."

* code 1..1 MS
* code = $loinc#74498-7
* code ^short = "Autopsy or histological placental examination results were used [US Standard Report of Fetal Death]"
* subject 1.. MS
* subject only Reference(Patient-decedent-fetus-ihe-vr)
* value[x] 1..1 MS
* value[x] only CodeableConcept
* value[x] from $ValueSet-yes-no-not-applicable (required)
* value[x] ^short = "Were autopsy or histological placental examinations results used in determining the cause of fetal death?"