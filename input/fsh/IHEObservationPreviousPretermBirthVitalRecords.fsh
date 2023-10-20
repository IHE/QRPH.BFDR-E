Profile: IHEObservationPreviousPretermBirthVitalRecords
Parent: Observation
Id: Observation-previous-preterm-birth-ihe-vr
Title: "Observation - Previous Preterm Birth - Vital Records"
Description: "This Observation profile indicates that the mother had a pregnancy risk factor of previous preterm birth."

* code = $loinc#73775-9
* code ^short = "Mothers Risk factors in this pregnancy [US Standard Certificate of Live Birth]"
* subject 1..
* subject only Reference(Patient-mother-ihe-vr)
* value[x] 1..
* value[x] only CodeableConcept
* value[x] = $sct#161765003
* value[x] ^short = "History of premature delivery (situation)"