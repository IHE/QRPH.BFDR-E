Profile: IHEObservationInfantBreastfedAtDischarge
Parent: Observation
Id: Observation-infant-breastfed-at-discharge-ihe
Title: "Observation - Infant Breastfed at Discharge"
Description: "This Observation profile represents whether or not the infant was being breastfed at discharge."

* code 1..1 MS
* code = $loinc#73756-9
* code ^short = "Infant is being breastfed at discharge [US Standard Certificate of Live Birth]"
* subject 1.. MS
* subject only Reference(Patient-child-ihe-vr)
* value[x] 1..1 MS
* value[x] only boolean
* value[x] ^short = "Is the infant being breastfed at discharge?"