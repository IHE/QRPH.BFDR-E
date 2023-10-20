Alias: $Extension-partial-date-time-vr = http://hl7.org/fhir/us/vr-common-library/StructureDefinition/Extension-partial-date-time-vr
Alias: $ValueSet-date-establishment-approach-vr = http://hl7.org/fhir/us/vr-common-library/ValueSet/ValueSet-date-establishment-approach-vr
Alias: $ValueSet-place-of-death-vr = http://hl7.org/fhir/us/vr-common-library/ValueSet/ValueSet-place-of-death-vr

Profile: IHEObservationDeathDateVitalRecords
Parent: Observation
Id: Observation-death-date-ihe-vr
Title: "Observation - Death Date - Vital Records"
Description: "This Observation profile represents the death date, death pronouncer, and date pronounced dead. If the actual date of death is known, set value to type dateTime. If the date of death is not known, and a range is known, set value to type Period."

* status 1..1 MS
* code = $loinc#81956-5
* code MS
* code ^short = "Date+time of death"
* subject 1..1 MS
* subject only Reference(Patient or Vrdr-ihe-decedent)
* subject ^label = "The decedent"
* subject ^short = "The decedent"
* performer 0..1 MS
* performer only Reference(Practitioner)
* performer ^label = "Death certifier"
* performer ^short = "Death certifier"
* value[x] only dateTime or Period
* value[x] ^short = "Date/Time of Death"
* value[x].extension contains $Extension-partial-date-time-vr named partialDateTime 0..1
* note 0..1 MS
* note ^short = "Notes about the actual or presumed date of death, e.g., the date of death can't be specified as a dateTime and can only be narrowed down to a decade"
* note ^definition = "Notes about the actual or presumed date of death, e.g., the date of death can't be specified as a dateTime and can only be narrowed down to a decade"
* method 0..1 MS
* method from $ValueSet-date-establishment-approach-vr (extensible)
* method ^short = "Codes that describe the approach to establishing a date."
* method ^binding.description = "ValueSetDateEstablishmentApproach"
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains
    datetimePronouncedDead 0..1 and
    placeOfDeath 0..1
* component[datetimePronouncedDead] ^short = "Date/Time Pronounced Dead"
* component[datetimePronouncedDead].code = $loinc#80616-6
* component[datetimePronouncedDead].value[x] 1..
* component[datetimePronouncedDead].value[x] only time or dateTime
* component[placeOfDeath] ^short = "Place of Death"
* component[placeOfDeath].code = $loinc#58332-8
* component[placeOfDeath].value[x] 1..
* component[placeOfDeath].value[x] only CodeableConcept
* component[placeOfDeath].value[x] from $ValueSet-place-of-death-vr (required)