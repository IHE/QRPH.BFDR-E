Alias: $2.16.840.1.114222.4.11.7486 = http://phinvads.cdc.gov/fhir/ValueSet/2.16.840.1.114222.4.11.7486

Profile: IHEObservationPaternityAcknowledgementSigned
Parent: Observation
Id: Observation-paternity-acknowledgement-signed-ihe
Title: "Observation - Paternity Acknowledgement Signed"
Description: "This Observation profile represents whether or not a paternity acknowledgement was signed by the father if the mother was not married at conception, at the time of birth, or at any time between conception and giving birth."

* code 1..1 MS
* code = $loinc#87302-6
* code ^short = "Paternity acknowledgment form signed Father"
* subject 1.. MS
* subject only Reference(Patient-child-ihe-vr)
* focus 1..1 MS
* focus only Reference(RelatedPerson-father-natural-ihe-vr)
* value[x] 1..1 MS
* value[x] only CodeableConcept
* value[x] from $2.16.840.1.114222.4.11.7486 (example)
* value[x] ^short = "Whether or not a paternity acknowledgement was signed by the father"