Profile: IHEObservationNumberFetalDeathsThisDeliveryVitalRecords
Parent: Observation
Id: Observation-number-fetal-deaths-this-delivery-ihe-vr
Title: "Observation - Number of Fetal Deaths This Delivery - Vital Records"
Description: "This Observation profile represents the number of fetal deaths in this delivery."

* code = $loinc#73772-6
* code MS
* code ^short = "LOINC LCN: Number of fetal deaths delivered"
* subject 1.. MS
* subject only Reference(Patient-decedent-fetus-ihe-vr)
* focus 1..1 MS
* focus only Reference(Patient-mother-ihe-vr)
* value[x] 1.. MS
* value[x] only integer