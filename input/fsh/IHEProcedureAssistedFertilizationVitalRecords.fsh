Profile: IHEProcedureAssistedFertilizationVitalRecords
Parent: Procedure
Id: Procedure-assisted-fertilization-ihe-vr
Title: "Procedure - Assisted Fertilization - Vital Records"
Description: "This Procedure profile records that a pregnancy risk factor of assisted fertilization was provided to the mother."

* code = $sct#63487001
* code MS
* code ^short = "Assisted fertilization (procedure)"
* subject only Reference(Patient-mother-ihe-vr)

Mapping: workflow
Id: workflow
Title: "Workflow Pattern"
Source: IHEProcedureAssistedFertilizationVitalRecords
Target: "http://hl7.org/fhir/workflow"

Mapping: rim
Id: rim
Title: "RIM Mapping"
Source: IHEProcedureAssistedFertilizationVitalRecords
Target: "http://hl7.org/v3"

Mapping: w5
Id: w5
Title: "FiveWs Pattern Mapping"
Source: IHEProcedureAssistedFertilizationVitalRecords
Target: "http://hl7.org/fhir/fivews"

Mapping: v2
Id: v2
Title: "HL7 v2 Mapping"
Source: IHEProcedureAssistedFertilizationVitalRecords
Target: "http://hl7.org/v2"