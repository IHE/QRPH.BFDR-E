Profile: IHEConditionPrepregnancyDiabetesVitalRecords
Parent: Condition
Id: Condition-prepregnancy-diabetes-ihe-vr
Title: "Condition - Prepregnancy Diabetes - Vital Records"
Description: "This Condition profile indicates that the mother had a pregnancy risk factor of prepregnancy diabetes."

* . ^short = "This Condition profile indicates that the mother had a pregnancy risk factor of prepregnancy diabetes."
* code = $sct#73211009
* code ^short = "Diabetes mellitus (disorder)"
* subject only Reference(Patient-mother-ihe-vr)

Mapping: workflow
Id: workflow
Title: "Workflow Pattern"
Source: IHEConditionPrepregnancyDiabetesVitalRecords
Target: "http://hl7.org/fhir/workflow"

Mapping: sct-concept
Id: sct-concept
Title: "SNOMED CT Concept Domain Binding"
Source: IHEConditionPrepregnancyDiabetesVitalRecords
Target: "http://snomed.info/conceptdomain"

Mapping: v2
Id: v2
Title: "HL7 v2 Mapping"
Source: IHEConditionPrepregnancyDiabetesVitalRecords
Target: "http://hl7.org/v2"

Mapping: rim
Id: rim
Title: "RIM Mapping"
Source: IHEConditionPrepregnancyDiabetesVitalRecords
Target: "http://hl7.org/v3"

Mapping: w5
Id: w5
Title: "FiveWs Pattern Mapping"
Source: IHEConditionPrepregnancyDiabetesVitalRecords
Target: "http://hl7.org/fhir/fivews"

Mapping: sct-attr
Id: sct-attr
Title: "SNOMED CT Attribute Binding"
Source: IHEConditionPrepregnancyDiabetesVitalRecords
Target: "http://snomed.org/attributebinding"