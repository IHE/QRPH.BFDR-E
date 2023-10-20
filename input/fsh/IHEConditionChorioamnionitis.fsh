Profile: IHEConditionChorioamnionitis
Parent: Condition
Id: Condition-chorioamnionitis-ihe
Title: "Condition - Chorioamnionitis"
Description: "This Condition profile indicates a labor and delivery characteristic of chorioamnionitis."

* . ^short = "This Condition profile indicates a labor and delivery characteristic of chorioamnionitis."
* code = $sct#11612004
* code ^short = "Chorioamnionitis (disorder)"
* subject only Reference(Patient-mother-ihe-vr)

Mapping: workflow
Id: workflow
Title: "Workflow Pattern"
Source: IHEConditionChorioamnionitis
Target: "http://hl7.org/fhir/workflow"

Mapping: sct-concept
Id: sct-concept
Title: "SNOMED CT Concept Domain Binding"
Source: IHEConditionChorioamnionitis
Target: "http://snomed.info/conceptdomain"

Mapping: v2
Id: v2
Title: "HL7 v2 Mapping"
Source: IHEConditionChorioamnionitis
Target: "http://hl7.org/v2"

Mapping: rim
Id: rim
Title: "RIM Mapping"
Source: IHEConditionChorioamnionitis
Target: "http://hl7.org/v3"

Mapping: w5
Id: w5
Title: "FiveWs Pattern Mapping"
Source: IHEConditionChorioamnionitis
Target: "http://hl7.org/fhir/fivews"

Mapping: sct-attr
Id: sct-attr
Title: "SNOMED CT Attribute Binding"
Source: IHEConditionChorioamnionitis
Target: "http://snomed.org/attributebinding"