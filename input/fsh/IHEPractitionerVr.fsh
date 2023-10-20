Alias: $2.16.840.1.114222.4.11.7111 = http://phinvads.cdc.gov/fhir/ValueSet/2.16.840.1.114222.4.11.7111

Profile: IHEPractitionerVitalRecords
Parent: Practitioner
Id: Practitioner-ihe-vr
Title: "Practitioner - Vital Records"
Description: "This Practitioner profile represents a practitioner who is involved in vital records (births, fetal death, death, etc.) as a certifier or an attendant. This profile is based on the US Core Practitioner and adds a further constraint to capture the title of the practitioner."

* qualification 0..1 MS
* qualification only BackboneElement
* qualification.code 1..1
* qualification.code from $2.16.840.1.114222.4.11.7111 (example)
* qualification.code ^short = "List of titles"
* qualification.code ^binding.description = "Live Birth/Fetal Death Practitioner title"

Mapping: v2
Id: v2
Title: "HL7 v2 Mapping"
Source: IHEPractitionerVitalRecords
Target: "http://hl7.org/v2"

Mapping: rim
Id: rim
Title: "RIM Mapping"
Source: IHEPractitionerVitalRecords
Target: "http://hl7.org/v3"

Mapping: servd
Id: servd
Title: "ServD"
Source: IHEPractitionerVitalRecords
Target: "http://www.omg.org/spec/ServD/1.0/"

Mapping: w5
Id: w5
Title: "FiveWs Pattern Mapping"
Source: IHEPractitionerVitalRecords
Target: "http://hl7.org/fhir/fivews"