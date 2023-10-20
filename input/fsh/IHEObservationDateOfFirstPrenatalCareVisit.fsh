Profile: IHEObservationDateOfFirstPrenatalCareVisit
Parent: Observation
Id: Observation-date-of-first-prenatal-care-visit-ihe
Title: "Observation - Date of First Prenatal Care Visit"
Description: "This Observation profile represents the date of the first prenatal care visit for this pregnancy. A prenatal visit is where a physician or other health care professional examined and/or counseled the pregnant woman for the pregnancy. If this profile is not present it indicates that the mother did not receive prenatal care at any time during the pregnancy."

* code 1..1 MS
* code = $loinc#69044-6
* code ^short = "Date of first prenatal care visit"
* subject 1..1 MS
* subject only Reference(Patient-mother-ihe-vr)
* focus 1..1 MS
* focus only Reference(Patient-child-ihe-vr or Patient-decedent-fetus-ihe-vr)
* value[x] 1..1 MS
* value[x] only dateTime
* value[x] ^short = "Date of first prenatal care visit"