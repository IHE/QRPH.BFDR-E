Profile: IHEProcedureInfertilityTreatmentVitalRecords
Parent: Procedure
Id: Procedure-infertility-treatment-ihe-vr
Title: "Procedure - Infertility Treatment - Vital Records"
Description: "This Procedure profile records that a pregnancy risk factor of infertility treatment was provided to the mother."

* code = $sct#445151000124101
* code MS
* code ^short = "Fertility enhancing drug therapy (procedure)"
* subject only Reference(Patient-mother-ihe-vr)

Mapping: workflow
Id: workflow
Title: "Workflow Pattern"
Source: IHEProcedureInfertilityTreatmentVitalRecords
Target: "http://hl7.org/fhir/workflow"

Mapping: rim
Id: rim
Title: "RIM Mapping"
Source: IHEProcedureInfertilityTreatmentVitalRecords
Target: "http://hl7.org/v3"

Mapping: w5
Id: w5
Title: "FiveWs Pattern Mapping"
Source: IHEProcedureInfertilityTreatmentVitalRecords
Target: "http://hl7.org/fhir/fivews"

Mapping: v2
Id: v2
Title: "HL7 v2 Mapping"
Source: IHEProcedureInfertilityTreatmentVitalRecords
Target: "http://hl7.org/v2"