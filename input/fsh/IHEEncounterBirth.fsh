Alias: $2.16.840.1.114222.4.11.7124 = http://phinvads.cdc.gov/fhir/ValueSet/2.16.840.1.114222.4.11.7124

Profile: IHEEncounterBirth
Parent: Encounter
Id: Encounter-birth-ihe
Title: "Encounter - Birth"
Description: "This Encounter profile represents the child's birth encounter."

* subject 1..1 MS
* subject only Reference(Patient-child-ihe-vr)
* participant MS
* participant ^slicing.discriminator.type = #value
* participant ^slicing.discriminator.path = "type"
* participant ^slicing.rules = #open
* participant contains
    attendant 0..* MS and
    certifier 0..* MS
* participant[attendant] ^short = "The person responsible for delivering the child."
* participant[attendant] ^definition = "The attendant at birth is defined as the individual at the delivery who is responsible for the delivery. For example, if an intern or nurse-midwife delivers an infant under the supervision of an obstetrician who is present in the delivery room, the obstetrician is to be reported as the attendant. However, a person who is not physically present at the delivery should not be reported as the attendant. For example, if the obstetrician is not physically present, the intern or nurse-midwife MUST be reported as the attendant."
* participant[attendant].type 1..1 MS
* participant[attendant].type = $loinc#87286-1
* participant[attendant].type ^short = "Birth attendant [Extended Identifier]"
* participant[attendant].type ^definition = "Birth attendant [Extended Identifier]"
* participant[attendant].individual 1.. MS
* participant[attendant].individual only Reference(Practitioner-ihe-vr)
* participant[certifier] ^short = "The individual who certifies to the fact that the birth occurred."
* participant[certifier] ^definition = "The individual who certifies to the fact that the birth occurred. May be, but need not be, the same as the attendant at birth."
* participant[certifier].type 1..1 MS
* participant[certifier].type = $loinc#87287-9
* participant[certifier].type ^short = "Birth certifier [Extended Identifier]"
* participant[certifier].type ^definition = "Birth certifier [Extended Identifier]"
* participant[certifier].period.start MS
* participant[certifier].period.start ^short = "Date certified"
* participant[certifier].period.start ^definition = "Date certified."
* participant[certifier].individual 1.. MS
* participant[certifier].individual only Reference(Practitioner-ihe-vr)
* hospitalization MS
* hospitalization.destination only Reference(Location)
* hospitalization.destination MS
* hospitalization.destination ^short = "If infant transferred, facility transferred to"
* hospitalization.destination ^definition = "If infant transferred, facility transferred to"
* hospitalization.dischargeDisposition MS
* hospitalization.dischargeDisposition ^short = "If infant transferred within 24 hours of delivery, set code = \"other-hcf\" (Other healthcare facility)"
* hospitalization.dischargeDisposition ^definition = "If infant transferred within 24 hours of delivery, set code = \"other-hcf\" (Other healthcare facility): the patient was transferred to another healthcare facility."
* location MS
* location ^short = "Information about the location of birth"
* location ^definition = "Information about the location of birth"
* location.location only Reference(Location)
* location.location MS
* location.location ^short = "Facility name (if not institution, give street and number)"
* location.location ^definition = "Facility name (if not institution, give street and number)"
* location.physicalType MS
* location.physicalType from $2.16.840.1.114222.4.11.7124 (example)
* location.physicalType ^short = "The value set contains the list of values used to indicate the type of place where birth or delivery occurred."
* location.physicalType ^definition = "Place where birth occurred (type of place)"
* location.physicalType ^binding.description = "Birth or Delivery Occurred (NCHS)"
* partOf only Reference(Encounter-maternity-ihe)
* partOf MS
* partOf ^short = "Reference to the mother's maternity encounter"
* partOf ^definition = "Reference to the mother's maternity encounter"

