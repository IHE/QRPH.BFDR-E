Profile: IHEObservationNumberPrenatalVisitsVitalRecords
Parent: Observation
Id: Observation-number-prenatal-visits-ihe-vr
Title: "Observation - Number of Prenatal Visits - Vital Records"
Description: "This Observation profile represents the total number of prenatal visits for the mother. The dates of the first and last prenatal visit are indicated by the effective date range. If the mother received no prenatal care, the value should indicate 0 visits."

* code = $loinc#68493-6
* code MS
* subject 1.. MS
* subject only Reference(Patient-mother-ihe-vr)
* effective[x] only dateTime
* effective[x] MS
* value[x] 1.. MS
* value[x] only integer