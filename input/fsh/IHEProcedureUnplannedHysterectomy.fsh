Profile: IHEProcedureUnplannedHysterectomy
Parent: Procedure
Id: Procedure-unplanned-hysterectomy-ihe
Title: "Procedure - Unplanned Hysterectomy"
Description: "This Procedure profile indicates a maternal morbidity of unplanned hysterectomy."
* code = $sct#236987005
* code ^short = "Emergency cesarean hysterectomy (procedure)"
* subject only Reference(Patient-mother-ihe-vr)

Mapping: workflow
Id: workflow
Title: "Workflow Pattern"
Source: IHEProcedureUnplannedHysterectomy
Target: "http://hl7.org/fhir/workflow"

Mapping: rim
Id: rim
Title: "RIM Mapping"
Source: IHEProcedureUnplannedHysterectomy
Target: "http://hl7.org/v3"

Mapping: w5
Id: w5
Title: "FiveWs Pattern Mapping"
Source: IHEProcedureUnplannedHysterectomy
Target: "http://hl7.org/fhir/fivews"

Mapping: v2
Id: v2
Title: "HL7 v2 Mapping"
Source: IHEProcedureUnplannedHysterectomy
Target: "http://hl7.org/v2"