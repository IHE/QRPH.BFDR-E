Profile: IHEConditionSeizureBFDRE
Parent: Condition
Id: Condition-seizure-ihe
Title: "Condition - Seizure"
Description: "This Condition profile indicates the newborn had an abnormal condition of seizure."

* code = $sct#91175000
* code ^short = "Seizure (finding)"
* subject only Reference(Patient-child-ihe-vr)

Mapping: workflow
Id: workflow
Title: "Workflow Pattern"
Source: IHEConditionSeizureBFDRE
Target: "http://hl7.org/fhir/workflow"

Mapping: sct-concept
Id: sct-concept
Title: "SNOMED CT Concept Domain Binding"
Source: IHEConditionSeizureBFDRE
Target: "http://snomed.info/conceptdomain"

Mapping: v2
Id: v2
Title: "HL7 v2 Mapping"
Source: IHEConditionSeizureBFDRE
Target: "http://hl7.org/v2"

Mapping: rim
Id: rim
Title: "RIM Mapping"
Source: IHEConditionSeizureBFDRE
Target: "http://hl7.org/v3"

Mapping: w5
Id: w5
Title: "FiveWs Pattern Mapping"
Source: IHEConditionSeizureBFDRE
Target: "http://hl7.org/fhir/fivews"

Mapping: sct-attr
Id: sct-attr
Title: "SNOMED CT Attribute Binding"
Source: IHEConditionSeizureBFDRE
Target: "http://snomed.org/attributebinding"