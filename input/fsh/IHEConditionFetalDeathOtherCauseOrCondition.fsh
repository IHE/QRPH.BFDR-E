Alias: $2.16.840.1.114222.4.11.7422 = http://phinvads.cdc.gov/fhir/ValueSet/2.16.840.1.114222.4.11.7422

Profile: IHEConditionFetalDeathOtherCauseOrCondition
Parent: Condition
Id: Condition-fetal-death-other-cause-or-condition-ihe
Title: "Condition - Fetal Death Other Cause or Condition"
Description: "This Condition profile represents another significant cause or condition for the death of the fetus."

* . ^short = "Another significant cause or condition for the death of the fetus."
* category contains otherCauseOrCondition 1..1 MS
* category[otherCauseOrCondition] = $loinc#76061-1
* code from $2.16.840.1.114222.4.11.7422 (example)
* code ^short = "The value sets contains the list of values used to report initiating cause or condition or other significant causes or conditions contributing to fetal death."
* code ^binding.description = "Fetal Death Cause or Condition (NCHS)"
* code.coding MS
* code.coding ^short = "The type of cause or condition should be selected from the bound value set."
* code.text MS
* code.text ^short = "Any further specification should be entered as free text to fully record the provider's view of the cause."
* subject only Reference(Patient-decedent-fetus-ihe-vr)
