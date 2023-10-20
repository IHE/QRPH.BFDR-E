Profile: IHEObservationAntibioticsAdministeredDuringLabor
Parent: Observation
Id: Observation-antibiotics-during-labor-ihe
Title: "Observation - Antibiotics Administered During Labor"
Description: "This Observation profile indicates a characteristic of labor of antibiotics administered during labor."

* code = $loinc#73813-8
* code ^short = "Characteristics of labor and delivery [US Standard Certificate of Live Birth]"
* subject 1..
* subject only Reference(Patient-mother-ihe-vr)
* focus 1..1 MS
* focus only Reference(Patient-child-ihe-vr)
* value[x] 1..
* value[x] only CodeableConcept
* value[x] = $sct#434691000124101
* value[x] ^short = "Antibacterial administered during labor (situation)"