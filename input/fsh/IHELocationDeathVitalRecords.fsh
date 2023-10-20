Alias: $CodeSystem-death-reporting-codes-vr = http://hl7.org/fhir/us/vr-common-library/CodeSystem/CodeSystem-death-reporting-codes-vr

Profile: IHELocationDeathVitalRecords
Parent: Location
Id: Location-death-ihe-vr
Title: "Location - Death - Vital Records"
Description: "This Location profile records the location of death. It is based on US Core Location and further constrains the type element to indicate that this is the location of death."

* name ^short = "Name of Death Location"
* type 1..1 MS
* type = $CodeSystem-death-reporting-codes-vr#death
* type ^short = "Death location"
* address.text MS
* position ^label = "Location of death lat/long"
* position ^short = "Location of death lat/long"
* position ^definition = "Location of death lat/long"

Mapping: rim
Id: rim
Title: "RIM Mapping"
Source: IHELocationDeathVitalRecords
Target: "http://hl7.org/v3"

Mapping: w5
Id: w5
Title: "FiveWs Pattern Mapping"
Source: IHELocationDeathVitalRecords
Target: "http://hl7.org/fhir/fivews"