Alias: $ValueSet-apgar-timing-vr = http://hl7.org/fhir/us/vr-common-library/ValueSet/ValueSet-apgar-timing-vr

Profile: IHEObservationApgarScoreVitalRecords
Parent: Observation
Id: Observation-apgar-score-ihe-vr
Title: "Observation - Apgar Score - Vital Records"
Description: "This Observation represents the Apgar score post-birth."

* code from $ValueSet-apgar-timing-vr (required)
* code ^short = "Standard timings for APGAR assessments. Birth certificates only require 5 and 10 minute timings. Other use cases may require/accept other timings."
* code ^binding.description = "ApgarTiming"
* subject 1..
* subject only Reference(Patient-child-ihe-vr)
* category = #survey
* value[x] 1..
* value[x] only integer

