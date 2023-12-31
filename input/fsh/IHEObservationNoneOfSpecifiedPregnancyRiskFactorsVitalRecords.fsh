Profile: IHEObservationNoneOfSpecifiedPregnancyRiskFactorsVitalRecords
Parent: Observation
Id: Observation-none-of-specified-pregnancy-risk-factors-ihe-vr
Title: "Observation - None Of Specified Pregnancy Risk Factors - Vital Records"
Description: "This Observation profile indicates that none of the specified pregnancy risk factors (including concept codes: 73211009, 11687002, 8762007, 48194001, 15938005, 161765003, 271903000, 63487001, 58533008, 63487001, 200144004) were risks factors noted for this pregnancy."

* code = $loinc#73775-9
* code ^short = "Mothers Risk factors in this pregnancy [US Standard Certificate of Live Birth]"
* subject 1..
* subject only Reference(Patient-mother-ihe-vr)
* value[x] 1..
* value[x] only CodeableConcept
* value[x] = $sct#260413007
* value[x] ^short = "None"