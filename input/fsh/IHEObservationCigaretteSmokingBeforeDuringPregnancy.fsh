Alias: $cigarette-smoking-before-during-pregnancy = http://hl7.org/fhir/us/bfdr/ValueSet/cigarette-smoking-before-during-pregnancy

Profile: IHEObservationCigaretteSmokingBeforeDuringPregnancy
Parent: Observation
Id: Observation-cigarette-smoking-before-during-pregnancy-ihe
Title: "Observation - Cigarette Smoking Before and During Pregnancy"
Description: """This Observation profile represents the average number of cigarettes smoked per day for each time period indicated by the value selected for code:
* Number of Cigarettes Smoked in 3 months prior to Pregnancy
* Number of Cigarettes Smoked in 1st 3 months
* Number of Cigarettes Smoked in 2nd 3 months
* Number of Cigarettes Smoked in third or last trimester

Where number of packs per day are provided, calculate number of cigarettes per day (a pack has 20 cigarettes) and record that number."""

* code 1..1 MS
* code from $cigarette-smoking-before-during-pregnancy (required)
* code ^short = "This value set contains codes to determine the number of cigarettes smoked in specific periods before and during pregnancy."
* code ^binding.description = "CigaretteSmokingBeforeAndDuringPregnancy"
* subject 1.. MS
* subject only Reference($Patient-mother-vr)
* focus 1..1 MS
* focus only Reference(Patient-child-ihe-vr or Patient-decedent-fetus-ihe-vr)
* value[x] 1..1 MS
* value[x] only integer
* value[x] ^short = "Average number of cigarettes smoked per day"
* value[x] ^definition = "Average number of cigarettes smoked per day. Where number of packs per day are provided, calculate number of cigarettes per day (a pack has 20 cigarettes) and record that number."