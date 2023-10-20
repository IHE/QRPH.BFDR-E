Profile: IHEConditionGestationalHypertensionVitalRecords
Parent: Condition
Id: Condition-gestational-hypertension-ihe-vr
Title: "Condition - Gestational Hypertension - Vital Records"
Description: "This Condition profile indicates that the mother had a pregnancy risk factor of gestational hypertension."

* . ^short = "This Condition profile indicates that the mother had a pregnancy risk factor of gestational hypertension."
* code = $sct#48194001
* code ^short = "Pregnancy-induced hypertension (disorder)"
* subject only Reference(Patient-mother-ihe-vr)

Mapping: workflow
Id: workflow
Title: "Workflow Pattern"
Source: IHEConditionGestationalHypertensionVitalRecords
Target: "http://hl7.org/fhir/workflow"

Mapping: sct-concept
Id: sct-concept
Title: "SNOMED CT Concept Domain Binding"
Source: IHEConditionGestationalHypertensionVitalRecords
Target: "http://snomed.info/conceptdomain"

Mapping: v2
Id: v2
Title: "HL7 v2 Mapping"
Source: IHEConditionGestationalHypertensionVitalRecords
Target: "http://hl7.org/v2"

Mapping: rim
Id: rim
Title: "RIM Mapping"
Source: IHEConditionGestationalHypertensionVitalRecords
Target: "http://hl7.org/v3"

Mapping: w5
Id: w5
Title: "FiveWs Pattern Mapping"
Source: IHEConditionGestationalHypertensionVitalRecords
Target: "http://hl7.org/fhir/fivews"

Mapping: sct-attr
Id: sct-attr
Title: "SNOMED CT Attribute Binding"
Source: IHEConditionGestationalHypertensionVitalRecords
Target: "http://snomed.org/attributebinding"