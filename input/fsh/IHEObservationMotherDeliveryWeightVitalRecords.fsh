Profile: IHEObservationMotherDeliveryWeightVitalRecords
Parent: http://hl7.org/fhir/R4/observation-vitalsigns.html
Id: Observation-mother-delivery-weight-ihe-vr
Title: "Observation - Mother Delivery Weight - Vital Records"
Description: "This Observation profile represents the weight of the mother at the time of birth/delivery."

* code = $loinc#69461-2
* subject 1..
* subject only Reference(Patient-mother-ihe-vr)
* value[x] 1..
* value[x] only Quantity

