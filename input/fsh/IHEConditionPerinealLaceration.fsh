Profile: IHEConditionPerinealLaceration
Parent: Condition
Id: Condition-perineal-laceration-ihe
Title: "Condition - Perineal Laceration"
Description: "This Condition profile indicates a maternal morbidity of perineal laceration."

* . ^short = "This Condition profile indicates a maternal morbidity of perineal laceration."
* code = $sct#398019008
* code ^short = "Perineal laceration during delivery (disorder)"
* subject only Reference(Patient-mother-ihe-vr)

Mapping: workflow
Id: workflow
Title: "Workflow Pattern"
Source: IHEConditionPerinealLaceration
Target: "http://hl7.org/fhir/workflow"

Mapping: sct-concept
Id: sct-concept
Title: "SNOMED CT Concept Domain Binding"
Source: IHEConditionPerinealLaceration
Target: "http://snomed.info/conceptdomain"

Mapping: v2
Id: v2
Title: "HL7 v2 Mapping"
Source: IHEConditionPerinealLaceration
Target: "http://hl7.org/v2"

Mapping: rim
Id: rim
Title: "RIM Mapping"
Source: IHEConditionPerinealLaceration
Target: "http://hl7.org/v3"

Mapping: w5
Id: w5
Title: "FiveWs Pattern Mapping"
Source: IHEConditionPerinealLaceration
Target: "http://hl7.org/fhir/fivews"

Mapping: sct-attr
Id: sct-attr
Title: "SNOMED CT Attribute Binding"
Source: IHEConditionPerinealLaceration
Target: "http://snomed.org/attributebinding"