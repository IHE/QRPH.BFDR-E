Profile: IHEObservationTabulatedEthnicityVitalRecords
Parent: Observation
Id: Observation-tabulated-ethnicity-ihe-vr
Title: "Observation - Tabulated Ethnicity - Vital Records"
Description: "This Observation profile represents the ethnic affiliation information for the mother or father. The observation will convey, as coded data, information that is provided in text form.  If the value is unknown, set dataAbsentReason to \"unknown\"."

* code 1..1 MS
* code = $loinc#80978-0
* code ^short = "Tabulated ethnicity"
* subject 1.. MS
* subject only Reference(Patient-child-ihe-vr)
* subject ^short = "This is the subject of the report, not the parent"
* focus ..1 MS
* focus only Reference(Patient-mother-ihe-vr or RelatedPerson-father-natural-ihe-vr)
* value[x] 0..1 MS
* value[x] only CodeableConcept
* value[x] from Ethnicity (example)
* value[x] ^label = "Ethnicity"
* value[x] ^short = "Ethnicity"
* value[x] ^binding.description = "Detailed Ethnicity"
* dataAbsentReason MS