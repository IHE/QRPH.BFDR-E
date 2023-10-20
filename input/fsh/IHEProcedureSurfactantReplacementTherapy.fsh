Profile: IHEProcedureSurfactantReplacementTherapy
Parent: Procedure
Id: Procedure-surfactant-replacement-therapy-ihe
Title: "Procedure - Surfactant Replacement Therapy"
Description: "This Procedure profile represents an abnormal condition of the newborn of surfactant replacement therapy."

* code = $sct#434701000124101
* code MS
* code ^short = "Surfactant replacement therapy (procedure)"
* subject only Reference(Patient-child-ihe-vr)

Mapping: workflow
Id: workflow
Title: "Workflow Pattern"
Source: IHEProcedureSurfactantReplacementTherapy
Target: "http://hl7.org/fhir/workflow"

Mapping: rim
Id: rim
Title: "RIM Mapping"
Source: IHEProcedureSurfactantReplacementTherapy
Target: "http://hl7.org/v3"

Mapping: w5
Id: w5
Title: "FiveWs Pattern Mapping"
Source: IHEProcedureSurfactantReplacementTherapy
Target: "http://hl7.org/fhir/fivews"

Mapping: v2
Id: v2
Title: "HL7 v2 Mapping"
Source: IHEProcedureSurfactantReplacementTherapy
Target: "http://hl7.org/v2"