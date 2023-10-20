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

Mapping: workflow
Id: workflow
Title: "Workflow Pattern"
Source: IHEObservationMotherHeightVitalRecords
Target: "http://hl7.org/fhir/workflow"

Mapping: sct-concept
Id: sct-concept
Title: "SNOMED CT Concept Domain Binding"
Source: IHEObservationMotherHeightVitalRecords
Target: "http://snomed.info/conceptdomain"

Mapping: v2
Id: v2
Title: "HL7 v2 Mapping"
Source: IHEObservationMotherHeightVitalRecords
Target: "http://hl7.org/v2"

Mapping: rim
Id: rim
Title: "RIM Mapping"
Source: IHEObservationMotherHeightVitalRecords
Target: "http://hl7.org/v3"

Mapping: w5
Id: w5
Title: "FiveWs Pattern Mapping"
Source: IHEObservationMotherHeightVitalRecords
Target: "http://hl7.org/fhir/fivews"

Mapping: sct-attr
Id: sct-attr
Title: "SNOMED CT Attribute Binding"
Source: IHEObservationMotherHeightVitalRecords
Target: "http://snomed.org/attributebinding"