Alias: $2.16.840.1.114222.4.11.7122 = http://phinvads.cdc.gov/fhir/ValueSet/2.16.840.1.114222.4.11.7122

Profile: IHEConditionCongenitalAnomalyOfNewborn
Parent: Condition
Id: Condition-congenital-anomaly-of-newborn-ihe
Title: "Condition - Congenital Anomaly of Newborn"
Description: "This Condition profile represents information on whether the infant suffered from one or more of a list of known malformations diagnosed prenatally or after delivery."

* . ^short = "Information on whether the infant suffered from one or more of a list of known malformations diagnosed prenatally or after delivery."
* category contains congenitalAnomolyNewborn 1..1 MS
* category[congenitalAnomolyNewborn] = $loinc#73780-9
* category[congenitalAnomolyNewborn] ^short = "Congenital anomalies of the newborn [US Standard Certificate of Live Birth]"
* code from $2.16.840.1.114222.4.11.7122 (example)
* code ^short = "The value set contain the list of values use to specify malformations of the newborn diagnosed prenatally or after delivery."
* code ^binding.description = "Newborn Congenital Anomalies (NCHS)"
* subject only Reference(Patient-child-ihe-vr)
* evidence ..2 MS
* evidence ^slicing.discriminator.type = #value
* evidence ^slicing.discriminator.path = "code"
* evidence ^slicing.rules = #open
* evidence contains
    karyotypePending 0..1 MS and
    karyotypeConfirmedAbmormal 0..1 MS
* evidence[karyotypePending] ^short = "Karyotype pending if there is a diagnosis of suspected chromosomal disorder or Down syndrome, Trisomy 21."
* evidence[karyotypePending].code 1..1 MS
* evidence[karyotypePending].code = $sct#312948004
* evidence[karyotypePending].code ^short = "Suspected chromosomal disorder or Down Syndrome: Karyotype pending"
* evidence[karyotypeConfirmedAbmormal] ^short = "Karyotype confirmed if there is a diagnosis of suspected chromosomal disorder or Down syndrome, Trisomy 21."
* evidence[karyotypeConfirmedAbmormal].code 1..1 MS
* evidence[karyotypeConfirmedAbmormal].code = $sct#442124003
* evidence[karyotypeConfirmedAbmormal].code ^short = "Suspected chromosomal disorder or Down Syndrome: Karyotype confirmed"

Mapping: workflow
Id: workflow
Title: "Workflow Pattern"
Source: IHEConditionCongenitalAnomalyOfNewborn
Target: "http://hl7.org/fhir/workflow"

Mapping: sct-concept
Id: sct-concept
Title: "SNOMED CT Concept Domain Binding"
Source: IHEConditionCongenitalAnomalyOfNewborn
Target: "http://snomed.info/conceptdomain"

Mapping: v2
Id: v2
Title: "HL7 v2 Mapping"
Source: IHEConditionCongenitalAnomalyOfNewborn
Target: "http://hl7.org/v2"

Mapping: rim
Id: rim
Title: "RIM Mapping"
Source: IHEConditionCongenitalAnomalyOfNewborn
Target: "http://hl7.org/v3"

Mapping: w5
Id: w5
Title: "FiveWs Pattern Mapping"
Source: IHEConditionCongenitalAnomalyOfNewborn
Target: "http://hl7.org/fhir/fivews"

Mapping: sct-attr
Id: sct-attr
Title: "SNOMED CT Attribute Binding"
Source: IHEConditionCongenitalAnomalyOfNewborn
Target: "http://snomed.org/attributebinding"