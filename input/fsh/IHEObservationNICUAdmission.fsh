Profile: IHEObservationNICUAdmission
Parent: Observation
Id: Observation-nicu-admission-ihe
Title: "Observation - NICU Admission"
Description: "This Observation profile indicates that the abnormal condition of an admission to the NICU was present."

* code = $loinc#73812-0
* code ^short = "Abnormal conditions of the newborn [US Standard Certificate of Live Birth]"
* subject 1..
* subject only Reference(Patient-child-ihe-vr)
* value[x] 1..
* value[x] only CodeableConcept
* value[x] = $sct#405269005
* value[x] ^short = "Neonatal intensive care unit (environment)"