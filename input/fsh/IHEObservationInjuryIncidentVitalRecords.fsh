Alias: $Extension-partial-date-time-vr = http://hl7.org/fhir/us/vr-common-library/StructureDefinition/Extension-partial-date-time-vr
Alias: $ValueSet-yes-no-unknown-not-applicable-vr = http://hl7.org/fhir/us/vr-common-library/ValueSet/ValueSet-yes-no-unknown-not-applicable-vr
Alias: $ValueSet-transportation-incident-role-vr = http://hl7.org/fhir/us/vr-common-library/ValueSet/ValueSet-transportation-incident-role-vr

Profile: IHEObservationInjuryIncidentVitalRecords
Parent: Observation
Id: Observation-injury-incident-ihe-vr
Title: "Observation - Injury Incident - Vital Records"
Description: "This Observation profile represents the certified explanation of how the injury leading to death occurred."

* status MS
* code = $loinc#11374-6
* code MS
* code ^short = "Injury incident description Narrative"
* code ^definition = "Injury incident description Narrative"
* subject 1.. MS
* subject only Reference(Patient or Vrdr-ihe-decedent)
* subject ^short = "The subject of this observation is the decedent."
* subject ^definition = "The subject of this observation is the decedent."
* effective[x] only dateTime
* effective[x] ^short = "Date/Time of Injury"
* effective[x].extension contains $Extension-partial-date-time-vr named partialDateTime 0..1
* performer ..1 MS
* performer only Reference(Practitioner or Vrdr-ihe-certifier)
* performer ^short = "Death certifier"
* performer ^definition = "Death certifier"
* value[x] 1.. MS
* value[x] only CodeableConcept
* value[x].text MS
* value[x].text ^short = "Description of how injured"
* note MS
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains
    placeOfInjury 0..1 and
    workInjuryIndicator 0..1 and
    transportationRole 0..1
* component[placeOfInjury] ^short = "Place of injury"
* component[placeOfInjury].code = $loinc#69450-5
* component[placeOfInjury].value[x] 1..
* component[placeOfInjury].valueCodeableConcept 0..1
* component[placeOfInjury].valueCodeableConcept only CodeableConcept
* component[placeOfInjury].valueCodeableConcept.text ^short = "Place of Injury - Literal"
* component[workInjuryIndicator] ^short = "Injury at Work?"
* component[workInjuryIndicator].code = $loinc#69444-8
* component[workInjuryIndicator].value[x] 1..
* component[workInjuryIndicator].value[x] only CodeableConcept
* component[workInjuryIndicator].value[x] from $ValueSet-yes-no-unknown-not-applicable-vr (required)
* component[workInjuryIndicator].value[x] ^short = "Injury at Work?"
* component[transportationRole].code = $loinc#69451-3
* component[transportationRole].value[x] 1..
* component[transportationRole].value[x] only CodeableConcept
* component[transportationRole].value[x] from $ValueSet-transportation-incident-role-vr (required)
* component[transportationRole].value[x] ^short = "Transportation role of decedent"
* component[transportationRole].valueCodeableConcept 1..1
* component[transportationRole].valueCodeableConcept.text ^short = "Transportation role of decedent, if code = OTH"