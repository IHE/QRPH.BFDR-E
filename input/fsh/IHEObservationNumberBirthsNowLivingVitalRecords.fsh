
Profile: IHEObservationNumberBirthsNowLivingVitalRecords
Parent: Observation
Id: Observation-number-births-now-living-ihe-vr
Title: "Observation - Number of Births Now Living - Vital Records"
Description: "This Observation profile represents the total number of previous live-born infants for the mother now living."

* code = $loinc#11638-4
* subject 1..
* subject only Reference(Patient-mother-ihe-vr)
* value[x] 1..
* value[x] only integer