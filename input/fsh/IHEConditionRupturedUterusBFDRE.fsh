Profile: IHEConditionRupturedUterusBFDRE
Parent: Condition
Id: Condition-ruptured-uterus-ihe
Title: "Condition - Ruptured Uterus"
Description: "This Condition profile indicates a maternal morbidity of ruptured uterus."

* . ^short = "This Condition profile indicates a maternal morbidity of ruptured uterus."
* code = $sct#34430009
* code ^short = "Rupture of uterus (disorder)"
* subject only Reference(Patient-mother-ihe-vr)

Mapping: workflow
Id: workflow
Title: "Workflow Pattern"
Source: IHEConditionRupturedUterusBFDRE
Target: "http://hl7.org/fhir/workflow"

Mapping: sct-concept
Id: sct-concept
Title: "SNOMED CT Concept Domain Binding"
Source: IHEConditionRupturedUterusBFDRE
Target: "http://snomed.info/conceptdomain"

Mapping: v2
Id: v2
Title: "HL7 v2 Mapping"
Source: IHEConditionRupturedUterusBFDRE
Target: "http://hl7.org/v2"

Mapping: rim
Id: rim
Title: "RIM Mapping"
Source: IHEConditionRupturedUterusBFDRE
Target: "http://hl7.org/v3"

Mapping: w5
Id: w5
Title: "FiveWs Pattern Mapping"
Source: IHEConditionRupturedUterusBFDRE
Target: "http://hl7.org/fhir/fivews"

Mapping: sct-attr
Id: sct-attr
Title: "SNOMED CT Attribute Binding"
Source: IHEConditionRupturedUterusBFDRE
Target: "http://snomed.org/attributebinding"