Profile: IHEObservationDateOfLastLiveBirth
Parent: Observation
Id: Observation-date-of-last-live-birth-ihe
Title: "Observation - Date of Last Live Birth"
Description: "This Observation profile represents the date of the mother's last live born infant (do not include this birth)."

* code 1..1 MS
* code = $loinc#68499-3
* code ^short = "Date last live birth"
* subject 1.. MS
* subject only Reference(Patient-mother-ihe-vr)
* value[x] 1..1 MS
* value[x] only dateTime
* value[x] ^short = "Date of of last live birth"