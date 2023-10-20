Alias: $2.16.840.1.114222.4.11.7585 = http://phinvads.cdc.gov/fhir/ValueSet/2.16.840.1.114222.4.11.7585

Profile: IHEObservationMethodOfDisposition
Parent: Observation
Id: Observation-method-of-disposition-ihe
Title: "Observation - Method of Disposition"
Description: "This Observation profile represents the method of disposition of the deceased fetus."

* code 1..1 MS
* code = $loinc#88241-5
* code ^short = "Fetal remains disposition method"
* subject 1.. MS
* subject only Reference(Patient-decedent-fetus-ihe-vr)
* value[x] 1..1 MS
* value[x] only CodeableConcept
* value[x] from $2.16.840.1.114222.4.11.7585 (example)
* value[x] ^short = "The collection of disposition methods of fetal remains used within birth and fetal death reporting."
* value[x] ^binding.description = "Fetal Remains Disposition Method (NCHS)"