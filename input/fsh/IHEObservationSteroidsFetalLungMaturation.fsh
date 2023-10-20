Profile: IHEObservationSteroidsFetalLungMaturation
Parent: Observation
Id: Observation-steroids-fetal-lung-maturation-ihe
Title: "Observation - Administration of Steroids for Fetal Lung Maturation"
Description: "This Observation profile indicates a characteristic of labor of administration of steroids for fetal lung maturation."

* code = $loinc#73813-8
* code ^short = "Characteristics of labor and delivery [US Standard Certificate of Live Birth]"
* subject 1..
* subject only Reference(Patient-mother-ihe-vr)
* focus 1..1
* focus only Reference($Patient-child-ihe-vr)
* value[x] 1..
* value[x] only CodeableConcept
* value[x] = $sct#434611000124106
* value[x] ^short = "Maternal antenatal administration of corticosteroids for fetal lung maturation (situation)"