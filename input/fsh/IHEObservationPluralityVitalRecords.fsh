Profile: ObservationPluralityVitalRecords
Parent: Observation
Id: Observation-plurality-ihe-vr
Title: "Observation - Plurality - Vital Records"
Description: "This Observation profile represents the number of fetuses delivered live or dead at any time in the pregnancy regardless of gestational age, or if the fetuses were delivered at different dates in the pregnancy."

* code = $loinc#57722-1
* code MS
* subject 1.. MS
* subject only Reference(Patient-mother-ihe-vr)
* value[x] 1.. MS
* value[x] only integer