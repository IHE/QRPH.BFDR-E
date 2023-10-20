Alias: $CodeSystem-death-reporting-codes-vr = http://hl7.org/fhir/us/vr-common-library/CodeSystem/CodeSystem-death-reporting-codes-vr

Profile: IHELocationInjuryVitalRecords
Parent: Location
Id: Location-injury-ihe-vr
Title: "Location - Injury - Vital Records"
Description: "This Location profile records the location of an injury. It is based on US Core Location and further constrains the type element to indicate that this is the location of an injury."

* type 1..1 MS
* type = $CodeSystem-death-reporting-codes-vr#injury
* type ^short = "Injury location"
* address.text MS
* position ^label = "Location of injury lat/long"
* position ^short = "Location of injury lat/long"
* position ^definition = "Location of injury lat/long"

Mapping: rim
Id: rim
Title: "RIM Mapping"
Source: IHELocationInjuryVitalRecords
Target: "http://hl7.org/v3"

Mapping: w5
Id: w5
Title: "FiveWs Pattern Mapping"
Source: IHELocationInjuryVitalRecords
Target: "http://hl7.org/fhir/fivews"