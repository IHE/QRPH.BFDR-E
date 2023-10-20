Alias: $2.16.840.1.114222.4.11.888 = http://phinvads.cdc.gov/fhir/ValueSet/2.16.840.1.114222.4.11.888

Profile: IHEObservationMotherMarriedDuringPregnancy
Parent: Observation
Id: Observation-mother-married-during-pregnancy-ihe
Title: "Observation - Mother Married During Pregnancy"
Description: "This Observation profile represents whether or not the mother was married at conception, at the time of birth, or at any time between conception and giving birth."

* code 1..1 MS
* code = $loinc#87301-8
* code ^short = "Mother was married at any time during pregnancy"
* subject 1.. MS
* subject only Reference(Patient-mother-ihe-vr)
* value[x] 1..1 MS
* value[x] only CodeableConcept
* value[x] from $2.16.840.1.114222.4.11.888 (example)
* value[x] ^short = "Was mother married at conception, at the time of birth, or at any time between conception and giving birth?"
* value[x] ^binding.description = "Yes No Unknown (YNU)"