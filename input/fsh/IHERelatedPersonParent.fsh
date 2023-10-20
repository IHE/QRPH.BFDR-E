Alias: $v2-0203 = http://terminology.hl7.org/CodeSystem/v2-0203
Alias: $Extension-relatedperson-deceased-vr = http://hl7.org/fhir/us/vr-common-library/StructureDefinition/Extension-relatedperson-deceased-vr
Alias: $Extension-relatedperson-birthplace-vr = http://hl7.org/fhir/us/vr-common-library/StructureDefinition/Extension-relatedperson-birthplace-vr
Alias: $Extension-partial-date-vr = http://hl7.org/fhir/us/vr-common-library/StructureDefinition/Extension-partial-date-vr

Profile: IHERelatedPersonParentVitalRecords
Parent: RelatedPerson
Id: RelatedPerson-parent-ihe-vr
Title: "Related Person - Parent - Vital Records"
Description: "This RelatedPerson profile contains constraints common to the Mother and Father profiles."
* extension contains
    $Extension-relatedperson-deceased-vr named deceased 0..1 MS and
    $Extension-relatedperson-birthplace-vr named birthPlace 0..1 MS and
    race named race 0..1 and
    ethnicity named ethnicity 0..1
* extension[race] ^short = "If race is unknown, use UNK from the bound value set."
* extension[ethnicity] ^short = "If ethnicity is unknown omit both coded data fields."
* identifier MS
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "type"
* identifier ^slicing.description = "Slice based on ID type"
* identifier ^slicing.ordered = false
* identifier ^slicing.rules = #open
* identifier contains NI 0..1 MS
* identifier[NI] ^short = "National Identifier if available and appropriate to send"
* identifier[NI].type 1.. MS
* identifier[NI].type = $v2-0203#NI
* patient only Reference(Patient-child-ihe-vr or Patient-decedent-fetus-ihe-vr)
* relationship 1..
* name 1..
* birthDate MS
* birthDate.extension contains $Extension-partial-date-vr named partialDate 0..* MS
* birthDate.extension[partialDate] ^short = "Provides values of a partial date"
* birthDate.extension[partialDate] ^definition = "Indicates reason for missing data on either the birthDate or the birthTime."

