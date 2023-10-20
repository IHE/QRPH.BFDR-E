Alias: $Extension-fetal-death-report-number = http://hl7.org/fhir/us/bfdr/StructureDefinition/Extension-fetal-death-report-number

Profile: IHECompositionCodedCauseOfFetalDeath
Parent: Composition
Id: Composition-coded-cause-of-fetal-death-ihe
Title: "Composition - Coded Cause of Fetal Death"
Description: "This Composition profile communicates coded cause of fetal death information to appropriate jurisdictional Vital Records Offices."

* extension MS
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains $Extension-fetal-death-report-number named fetalDeathReportNumber 1..1
* type = $loinc#86804-2
* type ^short = "Cause of death classification and related information Document"
* type ^definition = "Cause of death classification and related information Document"
* subject 1.. MS
* subject only Reference(Patient-decedent-fetus-ihe-vr)
* author ..1 MS
* author ^short = "The author is the NCHS."
* author ^definition = "The author is the NCHS."
* section ^slicing.discriminator.type = #pattern
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open
* section contains codedCauseOfFetalDeath 1..1 MS
* section[codedCauseOfFetalDeath] ^short = "Coded cause of fetal death"
* section[codedCauseOfFetalDeath] ^definition = "Coded cause of fetal death"
* section[codedCauseOfFetalDeath].code 1..
* section[codedCauseOfFetalDeath].code = $loinc#86804-2
* section[codedCauseOfFetalDeath].code ^short = "Cause of death classification and related information Document"
* section[codedCauseOfFetalDeath].code ^definition = "Cause of death classification and related information Document"
* section[codedCauseOfFetalDeath].entry ^slicing.discriminator.type = #profile
* section[codedCauseOfFetalDeath].entry ^slicing.discriminator.path = "$this.resolve()"
* section[codedCauseOfFetalDeath].entry ^slicing.ordered = false
* section[codedCauseOfFetalDeath].entry ^slicing.rules = #open
* section[codedCauseOfFetalDeath].entry ^short = "Entries that are contained in the coded cause of fetal death section"
* section[codedCauseOfFetalDeath].entry ^definition = "Entries that are contained in the coded cause of fetal death section"
* section[codedCauseOfFetalDeath].entry contains
    codedInitiatingFetalDeathCauseOrCondition 1..1 MS and
    codedOtherSignificantFetalDeathCauseOrCondition 0..* MS
* section[codedCauseOfFetalDeath].entry[codedInitiatingFetalDeathCauseOrCondition] only Reference(Condition-coded-initiating-fetal-death-cause-or-condition-ihe)
* section[codedCauseOfFetalDeath].entry[codedInitiatingFetalDeathCauseOrCondition] ^short = "Coded initiating cause or condition of fetal death"
* section[codedCauseOfFetalDeath].entry[codedInitiatingFetalDeathCauseOrCondition] ^definition = "Coded initiating cause or condition of fetal death"
* section[codedCauseOfFetalDeath].entry[codedOtherSignificantFetalDeathCauseOrCondition] only Reference(Condition-coded-other-fetal-death-cause-or-condition-ihe)
* section[codedCauseOfFetalDeath].entry[codedOtherSignificantFetalDeathCauseOrCondition] ^short = "Coded other significant cause or condition of fetal death"
* section[codedCauseOfFetalDeath].entry[codedOtherSignificantFetalDeathCauseOrCondition] ^definition = "Coded other significant cause or condition of fetal death"