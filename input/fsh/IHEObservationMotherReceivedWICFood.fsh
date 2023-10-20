Profile: IHEObservationMotherReceivedWICFood
Parent: Observation
Id: Observation-mother-received-wic-food-ihe
Title: "Observation - Mother Recieved WIC Food"
Description: "This Observation profile represents whether or not the mother made use of the Women, Infants and Children (WIC) nutritional program during the pregnancy."

* code 1..1 MS
* code = $loinc#87303-4
* code ^short = "Mother WIC food recipient"
* subject 1.. MS
* subject only Reference(Patient-mother-ihe-vr)
* focus 1..1 MS
* focus only Reference(Patient-child-ihe-vr or Patient-decedent-fetus-ihe-vr)
* value[x] 1..1 MS
* value[x] only CodeableConcept
* value[x] from $2.16.840.1.114222.4.11.888 (example)
* value[x] ^short = "Did mother get WIC food for herself during this pregnancy?"
* value[x] ^binding.description = "Yes No Unknown (YNU)"