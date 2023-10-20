Profile: IHEProcedureEpiduralOrSpinalAnesthesia
Parent: Procedure
Id: Procedure-epidural-or-spinal-anesthesia-ihe
Title: "Procedure - Epidural or Spinal Anesthesia"
Description: "This Procedure profile indicates a characteristic of labor of epidural or spinal anesthesia."

* code = $sct#18946005
* code ^short = "Epidural anesthesia (procedure)"
* subject only Reference(Patient-mother-ihe-vr)

Mapping: workflow
Id: workflow
Title: "Workflow Pattern"
Source: IHEProcedureEpiduralOrSpinalAnesthesia
Target: "http://hl7.org/fhir/workflow"

Mapping: rim
Id: rim
Title: "RIM Mapping"
Source: IHEProcedureEpiduralOrSpinalAnesthesia
Target: "http://hl7.org/v3"

Mapping: w5
Id: w5
Title: "FiveWs Pattern Mapping"
Source: IHEProcedureEpiduralOrSpinalAnesthesia
Target: "http://hl7.org/fhir/fivews"

Mapping: v2
Id: v2
Title: "HL7 v2 Mapping"
Source: IHEProcedureEpiduralOrSpinalAnesthesia
Target: "http://hl7.org/v2"