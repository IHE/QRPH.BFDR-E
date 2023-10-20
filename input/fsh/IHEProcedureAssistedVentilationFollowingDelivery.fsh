Profile: IHEProcedureAssistedVentilationFollowingDelivery
Parent: Procedure
Id: Procedure-assisted-ventilation-following-delivery-ihe
Title: "Procedure - Assisted Ventilation Following Delivery"
Description: "This Procedure profile represents an abnormal condition of the newborn of assisted ventilation immediately following delivery."

* code = urn:oid:2.16.840.1.114222.4.5.274#PHC1250
* code MS
* code ^short = "Assisted ventilation required immediately following delivery"
* subject only Reference(Patient-child-ihe-vr)

Mapping: workflow
Id: workflow
Title: "Workflow Pattern"
Source: IHEProcedureAssistedVentilationFollowingDelivery
Target: "http://hl7.org/fhir/workflow"

Mapping: rim
Id: rim
Title: "RIM Mapping"
Source: IHEProcedureAssistedVentilationFollowingDelivery
Target: "http://hl7.org/v3"

Mapping: w5
Id: w5
Title: "FiveWs Pattern Mapping"
Source: IHEProcedureAssistedVentilationFollowingDelivery
Target: "http://hl7.org/fhir/fivews"

Mapping: v2
Id: v2
Title: "HL7 v2 Mapping"
Source: IHEProcedureAssistedVentilationFollowingDelivery
Target: "http://hl7.org/v2"