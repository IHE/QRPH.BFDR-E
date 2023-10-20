Profile: IHEObservationNumberPreviousCesareansVitalRecords
Parent: Observation
Id: Observation-number-previous-cesareans-ihe-vr
Title: "Observation - Number of Previous Cesareans - Vital Records"
Description: "This Observation profile represents the total number of prior cesarean deliveries for the mother."

* code = $loinc#68497-7
* subject 1..
* subject only Reference(Patient-mother-ihe-vr)
* value[x] 1..
* value[x] only integer