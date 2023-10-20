Profile: IHEProcedureBloodTransfusion
Parent: Procedure
Id: Procedure-blood-transfusion-ihe
Title: "Procedure - Blood Transfusion"
Description: "This Procedure profile indicates a maternal morbidity of a blood transfusion."

* code = $sct#116859006
* code ^short = "Transfusion of blood product (procedure)"
* subject only Reference(Patient-mother-ihe-vr)

Mapping: workflow
Id: workflow
Title: "Workflow Pattern"
Source: IHEProcedureBloodTransfusion
Target: "http://hl7.org/fhir/workflow"

Mapping: rim
Id: rim
Title: "RIM Mapping"
Source: IHEProcedureBloodTransfusion
Target: "http://hl7.org/v3"

Mapping: w5
Id: w5
Title: "FiveWs Pattern Mapping"
Source: IHEProcedureBloodTransfusion
Target: "http://hl7.org/fhir/fivews"

Mapping: v2
Id: v2
Title: "HL7 v2 Mapping"
Source: IHEProcedureBloodTransfusion
Target: "http://hl7.org/v2"