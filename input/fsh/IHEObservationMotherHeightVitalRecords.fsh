Profile: IHEObservationMotherHeightVitalRecords
Parent: http://hl7.org/fhir/R4/observation-vitalsigns.html
Id: Observation-mother-height-ihe-vr
Title: "Observation - Mother Height - Vital Records"
Description: "This Observation profile represents the height of the mother."

* code = $loinc#3137-7
* code ^short = "Body height Measured"
* subject 1..
* subject only Reference(Patient-mother-ihe-vr)
* value[x] 1..
* value[x] only Quantity

