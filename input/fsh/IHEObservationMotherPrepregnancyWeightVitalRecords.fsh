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

Mapping: workflow
Id: workflow
Title: "Workflow Pattern"
Source: IHEObservationMotherPrepregnancyWeightVitalRecords
Target: "http://hl7.org/fhir/workflow"

Mapping: sct-concept
Id: sct-concept
Title: "SNOMED CT Concept Domain Binding"
Source: IHEObservationMotherPrepregnancyWeightVitalRecords
Target: "http://snomed.info/conceptdomain"

Mapping: v2
Id: v2
Title: "HL7 v2 Mapping"
Source: IHEObservationMotherPrepregnancyWeightVitalRecords
Target: "http://hl7.org/v2"

Mapping: rim
Id: rim
Title: "RIM Mapping"
Source: IHEObservationMotherPrepregnancyWeightVitalRecords
Target: "http://hl7.org/v3"

Mapping: w5
Id: w5
Title: "FiveWs Pattern Mapping"
Source: IHEObservationMotherPrepregnancyWeightVitalRecords
Target: "http://hl7.org/fhir/fivews"

Mapping: sct-attr
Id: sct-attr
Title: "SNOMED CT Attribute Binding"
Source: IHEObservationMotherPrepregnancyWeightVitalRecords
Target: "http://snomed.org/attributebinding"