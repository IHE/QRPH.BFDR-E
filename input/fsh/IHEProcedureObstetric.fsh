Alias: $2.16.840.1.114222.4.11.7136 = http://phinvads.cdc.gov/fhir/ValueSet/2.16.840.1.114222.4.11.7136
Alias: $procedure-outcome = http://hl7.org/fhir/ValueSet/procedure-outcome

Profile: IHEProcedureObstetric
Parent: Procedure
Id: Procedure-obstetric-ihe
Title: "Procedure - Obstetric"
Description: "This Procedure profile represents information about a particular medical treatment or invasive/manipulative procedure that was performed during this pregnancy specifically in the treatment of the pregnancy, management of labor and/or delivery."

* code from $2.16.840.1.114222.4.11.7136 (required)
* code ^short = "The value set contains the list of values used to specify selected medical treatments or invasive / manipulative procedures performed during this pregnancy specifically for management of labor and / or delivery."
* code ^binding.description = "Obstetric Procedures (NCHS)"
* subject only Reference(Patient-mother-ihe-vr)
* outcome MS
* outcome from $procedure-outcome (required)
* outcome ^short = "Outcome, if procedure was performed."
* outcome ^binding.description = "ProcedureOutcomeCodes(SNOMEDCT)"

