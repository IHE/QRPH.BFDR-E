Alias: $CodeSystem-local-component-codes-vr = http://hl7.org/fhir/us/vr-common-library/CodeSystem/CodeSystem-local-component-codes-vr

Profile: IHEObservationCauseOfDeathPart1VitalRecords
Parent: Observation
Id: Observation-cause-of-death-part1-ihe-vr
Title: "Observation - Cause of Death Part 1 - Vital Records"
Description: "This Observation profile represents the ordered causes of death asserted by the death certifier. The cause of death is initially specified with text."

* code = $loinc#69453-9
* code MS
* code ^label = "Cause of death [US Standard Certificate of Death]"
* code ^short = "Cause of death [US Standard Certificate of Death]"
* subject 1.. MS
* subject only Reference(Patient or Vrdr-ihe-decedent)
* subject ^label = "The decedent"
* subject ^short = "The decedent"
* performer only Reference(Practitioner or Vrdr-ihe-certifier)
* performer MS
* performer ^label = "Death certifier"
* performer ^short = "Death certifier"
* value[x] 1.. MS
* value[x] only CodeableConcept
* value[x] ^slicing.discriminator.type = #type
* value[x] ^slicing.discriminator.path = "$this"
* value[x] ^slicing.ordered = false
* value[x] ^slicing.rules = #open
* value[x].text 1.. MS
* value[x].text ^short = "Cause of Death Part 1, Line a,b,c,d"
* value[x].text ^maxLength = 120
* component 1..
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains
    lineNumber 1..1 MS and
    interval 1..1 MS
* component[lineNumber] ^short = "lineNumber"
* component[lineNumber].code = $CodeSystem-local-component-codes-vr#lineNumber
* component[lineNumber].code MS
* component[lineNumber].value[x] 1.. MS
* component[lineNumber].value[x] only integer
* component[lineNumber].valueInteger 1..1
* component[lineNumber].valueInteger ^short = "lineNumber"
* component[interval] ^short = "Cause of Death Part 1 Interval, Line a,b,c,d"
* component[interval].code = $loinc#69440-6
* component[interval].code MS
* component[interval].code ^short = "Disease onset to death interval"
* component[interval].value[x] 1.. MS
* component[interval].value[x] only string or Quantity
* component[interval].valueString ^short = "Interval"
* component[interval].valueString ^maxLength = 20
* component[interval].valueQuantity ^short = "Interval-quantity"