Profile: IHEObservationDateOfLastOtherPregnancyOutcome
Parent: Observation
Id: Observation-date-of-last-other-pregnancy-outcome-ihe
Title: "Observation - Date of Last Other Pregnancy Outcome"
Description: "This Observation profile represents the date of the mother's last other pregnancy outcome (includes pregnancy losses of any gestational age, e.g., spontaneous or induced losses or ectopic pregnancies) (do not include this birth)."

* code 1..1 MS
* code = $loinc#68500-8
* code ^short = "Date last other pregnancy outcome"
* subject 1.. MS
* subject only Reference(Patient-mother-ihe-vr)
* value[x] 1..1 MS
* value[x] only dateTime
* value[x] ^short = "Date of last other pregnancy outcome"