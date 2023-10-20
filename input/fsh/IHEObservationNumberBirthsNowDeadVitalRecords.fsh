
Profile: IHEObservationNumberBirthsNowDeadVitalRecords
Parent: Observation
Id: Observation-number-births-now-dead-ihe-vr
Title: "Observation - Number of Births Now Dead - Vital Records"
Description: "This Observation profile represents the total number of previous live-born infants for the mother now dead."

* code = $loinc#68496-9
* subject 1..
* subject only Reference(Patient-mother-ihe-vr)
* value[x] 1..
* value[x] only integer