Alias: $2.16.840.1.114222.4.11.7112 = http://phinvads.cdc.gov/fhir/ValueSet/2.16.840.1.114222.4.11.7112

Profile: IHEObservationFetalDeathTimePoint
Parent: Observation
Id: Observation-estimated-fetal-death-time-point-ihe
Title: "Observation - Fetal Death Time Point"
Description: "This Observation profile represents the estimated time of fetal death; the time of death is characterized by the relationship to the time of delivery."

* code 1..1 MS
* code = $loinc#73811-2
* code ^short = "Estimated timing of fetal death"
* subject 1.. MS
* subject only Reference(Patient-decedent-fetus-ihe-vr)
* value[x] 1..1 MS
* value[x] only CodeableConcept
* value[x] from $2.16.840.1.114222.4.11.7112 (example)
* value[x] ^short = "The value set contains a list of items to indicate when the fetus died with respect to labor and assessment."
* value[x] ^binding.description = "Fetal Death Time Points (NCHS)"

Mapping: fetal-death-report
Id: fetal-death-report
Title: "U.S. Standard Report of Fetal Death (rev. 2003)"
Description: "This table maps profile elements to  U.S. Standard Report of Fetal Death (rev. 2003)"
Source: IHEObservationFetalDeathTimePoint
Target: "https://www.cdc.gov/nchs/data/dvs/FDEATH11-03finalACC.pdf"
* value[x] -> "18e. Estimated Time of Fetal Death"