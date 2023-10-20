
Profile: IHEObservationNumberLiveBirthsThisDeliveryVitalRecords
Parent: Observation
Id: Observation-number-live-births-this-delivery-ihe-vr
Title: "Observation - Number of Live Births This Delivery - Vital Records"
Description: "This Observation profile represents the number of live births in this delivery."

* code = $loinc#73773-4
* code MS
* subject 1.. MS
* subject only Reference(Patient-decedent-fetus-ihe-vr)
* focus 1..1 MS
* focus only Reference(Patient-mother-ihe-vr)
* value[x] 1.. MS
* value[x] only integer