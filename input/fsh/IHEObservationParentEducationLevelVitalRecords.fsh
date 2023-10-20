Alias: $ValueSet-education-level-person-vr = http://hl7.org/fhir/us/vr-common-library/ValueSet/ValueSet-education-level-person-vr
Alias: $2.16.840.1.114222.4.11.7582 = http://phinvads.cdc.gov/fhir/ValueSet/2.16.840.1.114222.4.11.7582

Profile: IHEObservationParentEducationLevelVitalRecords
Parent: Observation
Id: Observation-parent-education-level-ihe-vr
Title: "Observation - Parent Education Level - Vital Records"
Description: "This Observation profile represents the highest degree or level of schooling completed by the parent."

* code MS
* code from $ValueSet-education-level-person-vr (preferred)
* code ^short = "Persons for whom education level can be reported."
* code ^binding.description = "EducationLevelPerson"
* subject 1.. MS
* subject only Reference(Patient-child-ihe-vr)
* subject ^short = "This is the subject of the report, not the parent"
* focus ..1 MS
* focus only Reference(Patient-mother-ihe-vr or RelatedPerson-father-natural-ihe-vr)
* value[x] 1.. MS
* value[x] only CodeableConcept
* value[x] from $2.16.840.1.114222.4.11.7582 (example)
* value[x] ^short = "The collection of education levels used for vital records reporting."
* value[x] ^binding.description = "Vital Records Education Level (NCHS)"