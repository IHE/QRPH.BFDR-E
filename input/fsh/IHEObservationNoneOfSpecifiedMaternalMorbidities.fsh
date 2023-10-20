Profile: IHEObservationNoneOfSpecifiedMaternalMorbidities
Parent: Observation
Id: Observation-none-of-specified-maternal-morbidities-ihe
Title: "Observation - None Of Specified Maternal Morbidities"
Description: "This Observation profile indicates that none of the specified maternal morbidities were present."

* code = $loinc#73781-7
* code ^short = "Maternal morbidity [US Standard Certificate of Live Birth]"
* subject 1..
* subject only Reference(Patient-mother-ihe-vr)
* value[x] 1..
* value[x] only CodeableConcept
* value[x] = $sct#260413007
* value[x] ^short = "None"