Profile: IHEObservationPreviousCesareanVitalRecords
Parent: Observation
Id: Observation-previous-cesarean-ihe-vr
Title: "Observation - Previous Cesarean - Vital Records"
Description: "This Observation profile indicates that the mother had a pregnancy risk factor of previous cesarean."

* code = $loinc#73775-9
* code ^short = "Mothers Risk factors in this pregnancy [US Standard Certificate of Live Birth]"
* subject 1..
* subject only Reference(Patient-mother-ihe-vr)
* value[x] 1..
* value[x] only CodeableConcept
* value[x] = $sct#200144004
* value[x] ^short = "Deliveries by cesarean (finding)"