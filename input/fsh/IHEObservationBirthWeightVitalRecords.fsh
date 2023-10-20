Profile: IHEObservationBirthWeightVitalRecords
Parent: http://hl7.org/fhir/R4/observation-vitalsigns.html
Id: Observation-birth-weight-ihe-vr
Title: "Observation - Birth Weight - Vital Records"
Description: "This Observation profile represents the weight of the infant/fetus at birth/delivery."

* code = $loinc#8339-4
* subject 1..
* subject only Reference(Patient-child-ihe-vr or Patient-decedent-fetus-ihe-vr)
* value[x] 1..
* value[x] only Quantity

