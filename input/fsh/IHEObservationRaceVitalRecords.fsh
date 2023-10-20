Alias: $2.16.840.1.114222.4.11.7373 = http://phinvads.cdc.gov/fhir/ValueSet/2.16.840.1.114222.4.11.7373

Profile: IHEObservationRaceVitalRecords
Parent: Observation
Id: Observation-race-ihe-vr
Title: "Observation - Race - Vital Records"
Description: "This Observation profile represents a single race code assigned to the person. If the value is unknown, set dataAbsentReason to \"unknown\"."

* code 1..1 MS
* code = $loinc#80977-2
* code ^short = "Tabulated race [CDC]"
* subject 1.. MS
* subject only Reference(Patient-child-ihe-vr)
* subject ^short = "This is the subject of the report, not the parent"
* focus ..1 MS
* focus only Reference(Patient-mother-ihe-vr or RelatedPerson-father-natural-ihe-vr)
* value[x] 0..1 MS
* value[x] only CodeableConcept
* value[x] from $2.16.840.1.114222.4.11.7373 (example)
* value[x] ^label = "To reflect race information."
* value[x] ^short = "Race (NCHS)"
* value[x] ^binding.description = "Race (NCHS)"
* dataAbsentReason MS
