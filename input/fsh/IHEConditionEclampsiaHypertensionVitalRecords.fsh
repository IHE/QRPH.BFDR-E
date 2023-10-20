Profile: IHEConditionEclampsiaHypertensionVitalRecords
Parent: Condition
Id: Condition-eclampsia-hypertension-ihe-vr
Title: "Condition - Eclampsia Hypertension - Vital Records"
Description: "This Condition profile indicates that the mother had a pregnancy risk factor of eclampsia hypertension."

* . ^short = "This Condition profile indicates that the mother had a pregnancy risk factor of eclampsia hypertension."
* code = $sct#15938005
* code ^short = "Eclampsia (disorder)"
* subject only Reference(Patient-mother-ihe-vr)

Mapping: workflow
Id: workflow
Title: "Workflow Pattern"
Source: IHEConditionEclampsiaHypertensionVitalRecords
Target: "http://hl7.org/fhir/workflow"

Mapping: sct-concept
Id: sct-concept
Title: "SNOMED CT Concept Domain Binding"
Source: IHEConditionEclampsiaHypertensionVitalRecords
Target: "http://snomed.info/conceptdomain"

Mapping: v2
Id: v2
Title: "HL7 v2 Mapping"
Source: IHEConditionEclampsiaHypertensionVitalRecords
Target: "http://hl7.org/v2"

Mapping: rim
Id: rim
Title: "RIM Mapping"
Source: IHEConditionEclampsiaHypertensionVitalRecords
Target: "http://hl7.org/v3"

Mapping: w5
Id: w5
Title: "FiveWs Pattern Mapping"
Source: IHEConditionEclampsiaHypertensionVitalRecords
Target: "http://hl7.org/fhir/fivews"

Mapping: sct-attr
Id: sct-attr
Title: "SNOMED CT Attribute Binding"
Source: IHEConditionEclampsiaHypertensionVitalRecords
Target: "http://snomed.org/attributebinding"