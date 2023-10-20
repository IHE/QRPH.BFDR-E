Profile: ObservationNoneOfSpecifiedCharacteristicsOfLaborAndDelivery
Parent: Observation
Id: Observation-none-of-specified-characteristics-labor-delivery
Title: "Observation - None Of Specified Characteristics of Labor and Delivery"
Description: "This Observation profile indicates that none of the specified characteristics of labor and delivery were present."

* code = $loinc#73813-8
* code ^short = "Characteristics of labor and delivery [US Standard Certificate of Live Birth]"
* subject 1..
* subject only Reference(Patient-mother-ihe-vr)
* focus 1..1
* focus only Reference(Patient-child-ihe-vr)
* value[x] 1..
* value[x] only CodeableConcept
* value[x] = $sct#260413007
* value[x] ^short = "None"