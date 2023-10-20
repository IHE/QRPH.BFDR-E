Profile: IHEObservationMotherPrepregnancyWeightVitalRecords
Parent: http://hl7.org/fhir/R4/observation-vitalsigns.html
Id: Observation-mother-prepregnancy-weight-ihe-vr
Title: "Observation - Mother Prepregnancy Weight - Vital Records"
Description: "This Observation profile represents the weight of the mother before becoming pregnant."

* code = $loinc#56077-1
* subject 1..
* subject only Reference(Patient-mother-ihe-vr)
* value[x] 1..
* value[x] only Quantity

