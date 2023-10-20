Alias: $Extension-fetal-death-report-number = http://hl7.org/fhir/us/bfdr/StructureDefinition/Extension-fetal-death-report-number
Alias: $Extension-live-birth-certificate-number = http://hl7.org/fhir/us/bfdr/StructureDefinition/Extension-live-birth-certificate-number


Profile: IHECompositionCodedRaceAndEthnicity
Parent: Composition
Id: Composition-coded-race-and-ethnicity-ihe
Title: "Composition - Coded Race and Ethnicity"
Description: "This Composition profile communicates coded race and ethnicity information to the appropriate jurisdictional Vital Records Office."

* extension 1.. MS
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    $Extension-fetal-death-report-number named fetalDeathReportNumber 0..1 MS and
    $Extension-live-birth-certificate-number named liveBirthCertificateNumber 0..1 MS
* type = $loinc#86805-9
* type MS
* type ^short = "Race and ethnicity information Document"
* type ^definition = "Race and ethnicity information Document"
* subject 1.. MS
* subject only Reference(Patient-child-ihe-vr or Patient-decedent-fetus-ihe-vr)
* author ..1 MS
* author ^short = "The author is the NCHS."
* author ^definition = "The author is the NCHS."
* section 2..2 MS
* section ^short = "Coded race and ethnicity section."
* section ^definition = "This section contains the tabulated and post-edited coded race and ethnicity details for the mother or father."
* section.code = $loinc#86805-9
* section.code ^short = "Race and ethnicity information Document"
* section.focus 1.. MS
* section.focus only Reference(Patient-mother-ihe-vr or RelatedPerson-father-natural-ihe-vr)
* section.focus ^short = "The focus of this section is the mother or father"
* section.focus ^definition = "The subject of the composition as a whole is the newborn baby or decedent fetus. The focus of this section in the composition is the mother or father."
* section.entry MS
* section.entry ^slicing.discriminator.type = #profile
* section.entry ^slicing.discriminator.path = "$this.resolve()"
* section.entry ^slicing.ordered = false
* section.entry ^slicing.rules = #open
* section.entry ^short = "Entries that are contained in the Coded Race and Ethnicity section"
* section.entry ^definition = "Entries that are contained in the Coded Race and Ethnicity section"
* section.entry contains
    race 1..1 MS and
    tabulatedEthnicity 1..1 MS
* section.entry[race] only Reference(Observation-race-ihe-vr)
* section.entry[race] ^short = "Tabulated race"
* section.entry[race] ^definition = "The mother or father's bridged race"
* section.entry[tabulatedEthnicity] only Reference(Observation-tabulated-ethnicity-ihe-vr)
* section.entry[tabulatedEthnicity] ^short = "Tabulated ethnicity"
* section.entry[tabulatedEthnicity] ^definition = "The mother or father's tabulated ethnicity"