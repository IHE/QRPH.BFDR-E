Profile: IHEProcedureAntibioticSuspectedNeonatalSepsis
Parent: Procedure
Id: Procedure-antibiotic-suspected-neonatal-sepsis-ihe
Title: "Procedure - Antibiotic for Suspected Neonatal Sepsis"
Description: "This Procedure profile represents an abnormal condition of antibiotic given for suspected neonatal sepsis."

* code = $sct#434621000124103
* code MS
* code ^short = "Antibiotic given for suspected neonatal sepsis (situation)"
* subject only Reference(Patient-child-ihe-vr)

Mapping: workflow
Id: workflow
Title: "Workflow Pattern"
Source: IHEProcedureAntibioticSuspectedNeonatalSepsis
Target: "http://hl7.org/fhir/workflow"

Mapping: rim
Id: rim
Title: "RIM Mapping"
Source: IHEProcedureAntibioticSuspectedNeonatalSepsis
Target: "http://hl7.org/v3"

Mapping: w5
Id: w5
Title: "FiveWs Pattern Mapping"
Source: IHEProcedureAntibioticSuspectedNeonatalSepsis
Target: "http://hl7.org/fhir/fivews"

Mapping: v2
Id: v2
Title: "HL7 v2 Mapping"
Source: IHEProcedureAntibioticSuspectedNeonatalSepsis
Target: "http://hl7.org/v2"