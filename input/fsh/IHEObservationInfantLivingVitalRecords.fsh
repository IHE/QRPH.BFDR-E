Profile: IHEObservationInfantLivingVitalRecords
Parent: Observation
Id: Observation-infant-living-ihe-vr
Title: "Observation - Infant Living - Vital Records"
Description: "This Observation profile represents whether the infant is living at the time the report is being submitted."

* code = $loinc#73757-7
* subject 1..
* subject only Reference(Patient-child-ihe-vr)
* value[x] 1..
* value[x] only boolean