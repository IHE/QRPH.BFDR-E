Profile: IHEObservationNumberOtherPregnancyOutcomesVitalRecords
Parent: Observation
Id: Observation-number-other-pregnancy-outcomes-ihe-vr
Title: "Observation - Number of Other Pregnancy Outcomes - Vital Records"
Description: "This Observation profile represents the total number of other pregnancy outcomes for the mother that did not result in a live birth  (included pregnancy losses of any gestational age, e.g., spontaneous or induced losses or ectopic pregnancies)."

* code = $loinc#69043-8
* subject 1..
* subject only Reference(Patient-mother-ihe-vr)
* value[x] 1..
* value[x] only integer