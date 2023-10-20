Profile: IHEProcedureArtificialInseminationVitalRecords
Parent: Procedure
Id: Procedure-artificial-insemination-ihe-vr
Title: "Procedure - Artificial Insemination - Vital Records"
Description: "This Procedure profile records that a pregnancy risk factor of artificial insemination was provided to the mother."

* code = $sct#58533008
* code MS
* code ^short = "Artificial insemination (procedure)"
* subject only Reference(Patient-mother-ihe-vr)

Mapping: workflow
Id: workflow
Title: "Workflow Pattern"
Source: IHEProcedureArtificialInseminationVitalRecords
Target: "http://hl7.org/fhir/workflow"

Mapping: rim
Id: rim
Title: "RIM Mapping"
Source: IHEProcedureArtificialInseminationVitalRecords
Target: "http://hl7.org/v3"

Mapping: w5
Id: w5
Title: "FiveWs Pattern Mapping"
Source: IHEProcedureArtificialInseminationVitalRecords
Target: "http://hl7.org/fhir/fivews"

Mapping: v2
Id: v2
Title: "HL7 v2 Mapping"
Source: IHEProcedureArtificialInseminationVitalRecords
Target: "http://hl7.org/v2"