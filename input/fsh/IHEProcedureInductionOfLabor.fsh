Profile: IHEProcedureInductionOfLabor
Parent: Procedure
Id: Procedure-induction-of-labor-ihe
Title: "Procedure - Induction of Labor"
Description: "This Procedure profile indicates a characteristic of labor of induction of labor."

* code = $sct#236958009
* code ^short = "Induction of labor (procedure)"
* subject only Reference(Patient-mother-ihe-vr)

Mapping: workflow
Id: workflow
Title: "Workflow Pattern"
Source: IHEProcedureInductionOfLabor
Target: "http://hl7.org/fhir/workflow"

Mapping: rim
Id: rim
Title: "RIM Mapping"
Source: IHEProcedureInductionOfLabor
Target: "http://hl7.org/v3"

Mapping: w5
Id: w5
Title: "FiveWs Pattern Mapping"
Source: IHEProcedureInductionOfLabor
Target: "http://hl7.org/fhir/fivews"

Mapping: v2
Id: v2
Title: "HL7 v2 Mapping"
Source: IHEProcedureInductionOfLabor
Target: "http://hl7.org/v2"