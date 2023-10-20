Profile: IHEProcedureAssistedVentilationMoreThanSixHours
Parent: Procedure
Id: Procedure-assisted-ventilation-more-than-six-hours-ihe
Title: "Procedure - Assisted Ventilation More Than Six Hours"
Description: "This Procedure profile represents an abnormal condition of the newborn of assisted ventilation for more than six hours."

* code = urn:oid:2.16.840.1.114222.4.5.274#PHC1251
* code MS
* code ^short = "Assisted ventilation required for more than six hours"
* subject only Reference(Patient-child-ihe-vr)

Mapping: workflow
Id: workflow
Title: "Workflow Pattern"
Source: IHEProcedureAssistedVentilationMoreThanSixHours
Target: "http://hl7.org/fhir/workflow"

Mapping: rim
Id: rim
Title: "RIM Mapping"
Source: IHEProcedureAssistedVentilationMoreThanSixHours
Target: "http://hl7.org/v3"

Mapping: w5
Id: w5
Title: "FiveWs Pattern Mapping"
Source: IHEProcedureAssistedVentilationMoreThanSixHours
Target: "http://hl7.org/fhir/fivews"

Mapping: v2
Id: v2
Title: "HL7 v2 Mapping"
Source: IHEProcedureAssistedVentilationMoreThanSixHours
Target: "http://hl7.org/v2"