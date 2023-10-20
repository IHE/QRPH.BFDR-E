Alias: $2.16.840.1.114222.4.11.7422 = http://phinvads.cdc.gov/fhir/ValueSet/2.16.840.1.114222.4.11.7422

Profile: IHEConditionFetalDeathCauseOrCondition
Parent: Condition
Id: Condition-fetal-death-cause-or-condition-ihe
Title: "Condition - Fetal Death Cause or Condition"
Description: "This Condition profile represents information provided by the clinician to indicate the cause or causes of the fetal death."

* . ^short = "Information provided by the clinician to indicate the cause or causes of the fetal death."
* category contains initiatingCauseOrCondition 1..1 MS
* category[initiatingCauseOrCondition] = $loinc#76060-3
* code from $2.16.840.1.114222.4.11.7422 (example)
* code ^short = "The value sets contains the list of values used to report initiating cause or condition or other significant causes or conditions contributing to fetal death."
* code ^binding.description = "Fetal Death Cause or Condition (NCHS)"
* code.coding MS
* code.coding ^short = "The type of cause or condition should be selected from the bound value set."
* code.text MS
* code.text ^short = "Any further specification should be entered as free text to fully record the provider's view of the cause."
* subject only Reference(Patient-decedent-fetus-ihe-vr)
