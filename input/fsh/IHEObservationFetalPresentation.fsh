Alias: $2.16.840.1.114222.4.11.7113 = http://phinvads.cdc.gov/fhir/ValueSet/2.16.840.1.114222.4.11.7113

Profile: IHEObservationFetalPresentation
Parent: Observation
Id: Observation-fetal-presentation-ihe
Title: "Observation - Fetal Presentation at Birth/Delivery"
Description: "This Observation profile represents the fetal presentation (orientation within the mother's womb) of a fetus prior to delivery/birth."

* code 1..1 MS
* code = $loinc#73761-9
* code ^short = "Fetal presentation at birth/delivery"
* subject 1.. MS
* subject only Reference(Patient-child-ihe-vr or Patient-decedent-fetus-ihe-vr)
* value[x] 1..1 MS
* value[x] only CodeableConcept
* value[x] from $2.16.840.1.114222.4.11.7113 (example)
* value[x] ^short = "The value set contains the list of the different presentations (orientations within the mother's womb) that a fetus may be in prior to delivery."
* value[x] ^definition = "The presentation (orientation within the mother's womb) that a fetus may be in prior to delivery/birth."
* value[x] ^binding.description = "Fetal Presentations (NCHS)"

