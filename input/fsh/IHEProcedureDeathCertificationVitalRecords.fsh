Alias: $ValueSet-certifier-types-vr = http://hl7.org/fhir/us/vr-common-library/ValueSet/ValueSet-certifier-types-vr

Profile: IHEProcedureDeathCertificationVitalRecords
Parent: Procedure
Id: Procedure-death-certification-ihe-vr
Title: "Procedure - Death Certification - Vital Records"
Description: "This Procedure profile records the certification of death by the certifier."

* status MS
* category 1.. MS
* category = $sct#103693007
* code = $sct#308646001
* code MS
* performed[x] only dateTime
* performed[x] ^short = "certification Datetime"
* performed[x] ^type.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* performed[x] ^type.extension.valueBoolean = true
* performer.function 1.. MS
* performer.function from $ValueSet-certifier-types-vr (required)
* performer.actor only Reference(Practitioner or Vrdr-ihe-certifier)
* performer.actor MS

