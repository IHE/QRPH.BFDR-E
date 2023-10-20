Alias: $2.16.840.1.114222.4.11.6070 = http://phinvads.cdc.gov/fhir/ValueSet/2.16.840.1.114222.4.11.6070

Profile: IHEConditionInfectionPresentDuringPregnancy
Parent: Condition
Id: Condition-infection-present-during-pregnancy-ihe
Title: "Condition - Infection Present During Pregnancy"
Description: "This Condition profile represents infections present and/or treated during the pregnancy."

* . ^short = "Information on infections present and/or treated during the pregnancy. This includes infections present at the start of pregnancy or confirmed diagnosis during pregnancy with or without documentation of treatment. Documentation of treatment during this pregnancy is adequate if a definitive diagnosis is not present in the available record."
* category contains infectionDuringPregnancy 1..1 MS
* category[infectionDuringPregnancy] = $loinc#72519-2
* category[infectionDuringPregnancy] ^short = "Infections present AndOr treated during this pregnancy for live birth [US Standard Certificate of Live Birth]"
* code from $2.16.840.1.114222.4.11.6070 (example)
* code ^short = "Infections present and/or treated during this pregnancy for live birth as required by the National US Standards. Note: Genital herpes simplex (SNOMED code 33839006) is only a Michigan state-specific requirement."
* code ^binding.description = "Infections During Pregnancy - Live Birth (NCHS)"
* subject only Reference(Patient-mother-ihe-vr)

Mapping: workflow
Id: workflow
Title: "Workflow Pattern"
Source: IHEConditionInfectionPresentDuringPregnancy
Target: "http://hl7.org/fhir/workflow"

Mapping: sct-concept
Id: sct-concept
Title: "SNOMED CT Concept Domain Binding"
Source: IHEConditionInfectionPresentDuringPregnancy
Target: "http://snomed.info/conceptdomain"

Mapping: v2
Id: v2
Title: "HL7 v2 Mapping"
Source: IHEConditionInfectionPresentDuringPregnancy
Target: "http://hl7.org/v2"

Mapping: rim
Id: rim
Title: "RIM Mapping"
Source: IHEConditionInfectionPresentDuringPregnancy
Target: "http://hl7.org/v3"

Mapping: w5
Id: w5
Title: "FiveWs Pattern Mapping"
Source: IHEConditionInfectionPresentDuringPregnancy
Target: "http://hl7.org/fhir/fivews"

Mapping: sct-attr
Id: sct-attr
Title: "SNOMED CT Attribute Binding"
Source: IHEConditionInfectionPresentDuringPregnancy
Target: "http://snomed.org/attributebinding"