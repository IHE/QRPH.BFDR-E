Profile: IHEObservationNoneOfSpecifiedAbnormalConditionsOfNewborn
Parent: Observation
Id: Observation-none-of-specified-abnormal-conditions-of-newborn-ihe
Title: "Observation - None Of Specified Abnormal Conditions of Newborn"
Description: "This Observation profile indicates that none of the specified abnormal conditions of the newborn were present."

* code = $loinc#73812-0
* code ^short = "Abnormal conditions of the newborn [US Standard Certificate of Live Birth]"
* subject 1..
* subject only Reference(Patient-child-ihe-vr)
* value[x] 1..
* value[x] only CodeableConcept
* value[x] = $sct#260413007
* value[x] ^short = "None"