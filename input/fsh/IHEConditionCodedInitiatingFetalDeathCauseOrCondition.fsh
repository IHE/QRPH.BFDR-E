Alias: $2.16.840.1.114222.4.11.7933 = http://phinvads.cdc.gov/fhir/ValueSet/2.16.840.1.114222.4.11.7933

Profile: IHEConditionCodedInitiatingFetalDeathCauseOrCondition
Parent: Condition
Id: Condition-coded-initiating-fetal-death-cause-or-condition-ihe
Title: "Condition - Coded Initiating Fetal Death Cause or Condition"
Description: "This Condition profile represents the coded initiating cause/condition of fetal death."

* . ^short = "This profile represents the coded initiating cause/condition of fetal death."
* category contains codedInitiatingCauseOrCondition 1..1 MS
* category[codedInitiatingCauseOrCondition] = $loinc#92022-3
* code from $2.16.840.1.114222.4.11.7933 (example)
* code ^short = "This value set contains the ICD10 codes for causes of fetal death as defined by the ICD-10-Mortality Fetal Manual (2016)."
* code ^definition = "This value set contains the ICD10 codes for causes of fetal death as defined by the ICD-10-Mortality Fetal Manual (2016). Defined as the following, a cause of fetal death is the morbid condition or disease process, abnormality, injury, or poisoning leading directly to fetal death. The initiating cause of fetal death is the disease or injury, which initiated the chain of morbid events leading directly to death or the circumstances of the accident or violence, which produced fatal injury. A fetal death often results from the combined effect of two or more conditions. These conditions may be completely unrelated, arising independently of each other or they may be causally related to each other; that is, one cause may lead to another which in turn, leads to a third cause, etc."
* code ^binding.description = "Cause of Fetal Death ICD-10"
* subject only Reference(Patient-decedent-fetus-ihe-vr)

Mapping: workflow
Id: workflow
Title: "Workflow Pattern"
Source: IHEConditionCodedInitiatingFetalDeathCauseOrCondition
Target: "http://hl7.org/fhir/workflow"

Mapping: sct-concept
Id: sct-concept
Title: "SNOMED CT Concept Domain Binding"
Source: IHEConditionCodedInitiatingFetalDeathCauseOrCondition
Target: "http://snomed.info/conceptdomain"

Mapping: v2
Id: v2
Title: "HL7 v2 Mapping"
Source: IHEConditionCodedInitiatingFetalDeathCauseOrCondition
Target: "http://hl7.org/v2"

Mapping: rim
Id: rim
Title: "RIM Mapping"
Source: IHEConditionCodedInitiatingFetalDeathCauseOrCondition
Target: "http://hl7.org/v3"

Mapping: w5
Id: w5
Title: "FiveWs Pattern Mapping"
Source: IHEConditionCodedInitiatingFetalDeathCauseOrCondition
Target: "http://hl7.org/fhir/fivews"

Mapping: sct-attr
Id: sct-attr
Title: "SNOMED CT Attribute Binding"
Source: IHEConditionCodedInitiatingFetalDeathCauseOrCondition
Target: "http://snomed.org/attributebinding"