Profile: IHEObservationICUAdmission
Parent: Observation
Id: Observation-icu-admission-ihe
Title: "Observation - ICU Admission"
Description: "This Observation profile indicates that the maternal morbidity of an admission to the ICU was present."

* code = $loinc#73781-7
* code ^short = "Maternal morbidity [US Standard Certificate of Live Birth]"
* subject 1..
* subject only Reference(Patient-mother-ihe-vr)
* value[x] 1..
* value[x] only CodeableConcept
* value[x] = $sct#309904001
* value[x] ^short = "Intensive care unit (environment)"