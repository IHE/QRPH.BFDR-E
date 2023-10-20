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

Mapping: workflow
Id: workflow
Title: "Workflow Pattern"
Source: IHEObservationMotherDeliveryWeightVitalRecords
Target: "http://hl7.org/fhir/workflow"

Mapping: sct-concept
Id: sct-concept
Title: "SNOMED CT Concept Domain Binding"
Source: IHEObservationMotherDeliveryWeightVitalRecords
Target: "http://snomed.info/conceptdomain"

Mapping: v2
Id: v2
Title: "HL7 v2 Mapping"
Source: IHEObservationMotherDeliveryWeightVitalRecords
Target: "http://hl7.org/v2"

Mapping: rim
Id: rim
Title: "RIM Mapping"
Source: IHEObservationMotherDeliveryWeightVitalRecords
Target: "http://hl7.org/v3"

Mapping: w5
Id: w5
Title: "FiveWs Pattern Mapping"
Source: IHEObservationMotherDeliveryWeightVitalRecords
Target: "http://hl7.org/fhir/fivews"

Mapping: sct-attr
Id: sct-attr
Title: "SNOMED CT Attribute Binding"
Source: IHEObservationMotherDeliveryWeightVitalRecords
Target: "http://snomed.org/attributebinding"