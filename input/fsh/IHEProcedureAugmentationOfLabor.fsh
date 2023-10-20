Profile: IHEProcedureAugmentationOfLabor
Parent: Procedure
Id: Procedure-augmentation-of-labor-ihe
Title: "Procedure - Augmentation of Labor"
Description: "This Procedure profile indicates a characteristic of labor of augmentation of labor."

* code = $sct#237001001
* code ^short = "Augmentation of labor (procedure)"
* subject only Reference(Patient-mother-ihe-vr)

Mapping: workflow
Id: workflow
Title: "Workflow Pattern"
Source: IHEProcedureAugmentationOfLabor
Target: "http://hl7.org/fhir/workflow"

Mapping: rim
Id: rim
Title: "RIM Mapping"
Source: IHEProcedureAugmentationOfLabor
Target: "http://hl7.org/v3"

Mapping: w5
Id: w5
Title: "FiveWs Pattern Mapping"
Source: IHEProcedureAugmentationOfLabor
Target: "http://hl7.org/fhir/fivews"

Mapping: v2
Id: v2
Title: "HL7 v2 Mapping"
Source: IHEProcedureAugmentationOfLabor
Target: "http://hl7.org/v2"