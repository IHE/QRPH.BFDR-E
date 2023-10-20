Profile: IHEObservationGestationalAgeAtDeliveryVitalRecords
Parent: Observation
Id: Observation-gestational-age-at-delivery-ihe-vr
Title: "Observation - Gestational Age at Delivery - Vital Records"
Description: "This Observation profile represents the obstetric estimate of the infant’s gestation in completed weeks based on the birth/delivery attendant’s final estimate of gestation which should be determined by all perinatal factors and assessments such as ultrasound, but not the neonatal exam."

* code = $loinc#11884-4
* subject 1..
* subject only Reference(Patient-child-ihe-vr or Patient-decedent-fetus-ihe-vr)
* value[x] 1..
* value[x] only Quantity
* value[x].system 1.. MS
* value[x].system = "http://unitsofmeasure.org" (exactly)
* value[x].code 1.. MS
* value[x].code = #wk (exactly)
* method MS