Profile: IHEConditionGestationalDiabetesVitalRecords
Parent: Condition
Id: Condition-gestational-diabetes-ihe-vr
Title: "Condition - Gestational Diabetes - Vital Records"
Description: "This Condition profile indicates that the mother had a pregnancy risk factor of gestational diabetes."

* . ^short = "This Condition profile indicates that the mother had a pregnancy risk factor of gestational diabetes."
* code = $sct#11687002
* code ^short = "Gestational diabetes mellitus (disorder)"
* subject only Reference(Patient-mother-ihe-vr)

Mapping: workflow
Id: workflow
Title: "Workflow Pattern"
Source: IHEConditionGestationalDiabetesVitalRecords
Target: "http://hl7.org/fhir/workflow"

Mapping: sct-concept
Id: sct-concept
Title: "SNOMED CT Concept Domain Binding"
Source: IHEConditionGestationalDiabetesVitalRecords
Target: "http://snomed.info/conceptdomain"

Mapping: v2
Id: v2
Title: "HL7 v2 Mapping"
Source: IHEConditionGestationalDiabetesVitalRecords
Target: "http://hl7.org/v2"

Mapping: rim
Id: rim
Title: "RIM Mapping"
Source: IHEConditionGestationalDiabetesVitalRecords
Target: "http://hl7.org/v3"

Mapping: w5
Id: w5
Title: "FiveWs Pattern Mapping"
Source: IHEConditionGestationalDiabetesVitalRecords
Target: "http://hl7.org/fhir/fivews"

Mapping: sct-attr
Id: sct-attr
Title: "SNOMED CT Attribute Binding"
Source: IHEConditionGestationalDiabetesVitalRecords
Target: "http://snomed.org/attributebinding"