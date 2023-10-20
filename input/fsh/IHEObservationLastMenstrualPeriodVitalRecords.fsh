Profile: IHEObservationLastMenstrualPeriodVitalRecords
Parent: Observation
Id: Observation-last-menstrual-period-ihe-vr
Title: "Observation - Last Menstrual Period - Vital Records"
Description: "This Observation profile represents the date of the last menstrual period of the patient. The first day of last menstrual period should be captured. The effectiveTime captures the observation date."

* code = $loinc#8665-2
* code MS
* code ^short = "Last menstrual period start date"
* subject 1.. MS
* subject only Reference(Patient-mother-ihe-vr)
* effective[x] only dateTime
* effective[x] MS
* effective[x] ^short = "Observation date (date on which the observation was reported to the provider)."
* effective[x] ^definition = "The date on which the observation was made/reported to the provider for recording in the EHR."
* value[x] 1.. MS
* value[x] only dateTime
* value[x] ^short = "Start of last menstrual period"
* value[x] ^definition = "Start date of last menstrual period."