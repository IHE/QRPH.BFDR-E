Alias: $2.16.840.1.114222.4.11.7138 = http://phinvads.cdc.gov/fhir/ValueSet/2.16.840.1.114222.4.11.7138

Profile: IHEObservationHistologicalPlacentalExamPerformed
Parent: Observation
Id: Observation-histological-placental-exam-performed-ihe
Title: "Observation - Histological Placental Exam Performed"
Description: "This Observation profile represents whether or not a histological placental examination was performed."

* code 1..1 MS
* code = $loinc#73767-6
* code ^short = "Histological placental examination was performed [US Standard Report of Fetal Death]"
* subject 1.. MS
* subject only Reference(Patient-decedent-fetus-ihe-vr)
* value[x] 1..1 MS
* value[x] only CodeableConcept
* value[x] from $2.16.840.1.114222.4.11.7138 (example)
* value[x] ^short = "The value set contains the list of values used to indicate whether or not a histological placental examination was performed."
* value[x] ^binding.description = "Histological Placental Examination (NCHS)"