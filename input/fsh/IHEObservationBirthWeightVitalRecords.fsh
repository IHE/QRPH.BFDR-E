Profile: IHEObservationBirthWeightVitalRecords
Parent: http://hl7.org/fhir/R4/observation-vitalsigns.html
Id: Observation-birth-weight-ihe-vr
Title: "Observation - Birth Weight - Vital Records"
Description: "This Observation profile represents the weight of the infant/fetus at birth/delivery."

* code = $loinc#8339-4
* subject 1..
* subject only Reference(Patient-child-ihe-vr or Patient-decedent-fetus-ihe-vr)
* value[x] 1..
* value[x] only Quantity

Mapping: workflow
Id: workflow
Title: "Workflow Pattern"
Source: IHEObservationBirthWeightVitalRecords
Target: "http://hl7.org/fhir/workflow"

Mapping: sct-concept
Id: sct-concept
Title: "SNOMED CT Concept Domain Binding"
Source: IHEObservationBirthWeightVitalRecords
Target: "http://snomed.info/conceptdomain"

Mapping: v2
Id: v2
Title: "HL7 v2 Mapping"
Source: IHEObservationBirthWeightVitalRecords
Target: "http://hl7.org/v2"

Mapping: rim
Id: rim
Title: "RIM Mapping"
Source: IHEObservationBirthWeightVitalRecords
Target: "http://hl7.org/v3"

Mapping: w5
Id: w5
Title: "FiveWs Pattern Mapping"
Source: IHEObservationBirthWeightVitalRecords
Target: "http://hl7.org/fhir/fivews"

Mapping: sct-attr
Id: sct-attr
Title: "SNOMED CT Attribute Binding"
Source: IHEObservationBirthWeightVitalRecords
Target: "http://snomed.org/attributebinding"