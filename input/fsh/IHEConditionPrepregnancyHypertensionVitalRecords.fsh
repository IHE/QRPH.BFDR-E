Profile: IHEConditionPrepregnancyHypertensionVitalRecords
Parent: Condition
Id: Condition-prepregnancy-hypertension-ihe-vr
Title: "Condition - Prepregnancy Hypertension - Vital Records"
Description: "This Condition profile indicates that the mother had a pregnancy risk factor of prepregnancy hypertension."

* . ^short = "This Condition profile indicates that the mother had a pregnancy risk factor of prepregnancy hypertension."
* code = $sct#38341003
* code ^short = "Hypertensive disorder, systemic arterial (disorder)"
* subject only Reference(Patient-mother-ihe-vr)

Mapping: workflow
Id: workflow
Title: "Workflow Pattern"
Source: IHEConditionPrepregnancyHypertensionVitalRecords
Target: "http://hl7.org/fhir/workflow"

Mapping: sct-concept
Id: sct-concept
Title: "SNOMED CT Concept Domain Binding"
Source: IHEConditionPrepregnancyHypertensionVitalRecords
Target: "http://snomed.info/conceptdomain"

Mapping: v2
Id: v2
Title: "HL7 v2 Mapping"
Source: IHEConditionPrepregnancyHypertensionVitalRecords
Target: "http://hl7.org/v2"

Mapping: rim
Id: rim
Title: "RIM Mapping"
Source: IHEConditionPrepregnancyHypertensionVitalRecords
Target: "http://hl7.org/v3"

Mapping: w5
Id: w5
Title: "FiveWs Pattern Mapping"
Source: IHEConditionPrepregnancyHypertensionVitalRecords
Target: "http://hl7.org/fhir/fivews"

Mapping: sct-attr
Id: sct-attr
Title: "SNOMED CT Attribute Binding"
Source: IHEConditionPrepregnancyHypertensionVitalRecords
Target: "http://snomed.org/attributebinding"