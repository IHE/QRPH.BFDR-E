Alias: $Extension-live-birth-certificate-number = http://hl7.org/fhir/us/bfdr/StructureDefinition/Extension-live-birth-certificate-number
Alias: $Extension-live-birth-local-file-number = http://hl7.org/fhir/us/bfdr/StructureDefinition/Extension-live-birth-local-file-number
Alias: $Extension-date-filed-by-registrar = http://hl7.org/fhir/us/bfdr/StructureDefinition/Extension-date-filed-by-registrar
Alias: $Extension-replacement-status = http://hl7.org/fhir/us/bfdr/StructureDefinition/Extension-replacement-status
Alias: $Extension-encounter-maternity-reference = http://hl7.org/fhir/us/bfdr/StructureDefinition/Extension-encounter-maternity-reference


Profile: IHECompositionJurisdictionLiveBirthReport
Parent: Composition
Id: Composition-jurisdiction-live-birth-report-ihe
Title: "Composition - Jurisdiction Live Birth Report"
Description: "This Composition profile contains information of a live birth and the issuance of a Birth Certificate to be recorded and communicated to the national statistics agency."

* . ^short = "Jurisdiction Live Birth Report"
* extension MS
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    $Extension-live-birth-certificate-number named liveBirthCertificateNumber 1..1 MS and
    $Extension-live-birth-local-file-number named liveBirthLocalFileNumber 0..1 MS and
    $Extension-date-filed-by-registrar named dateFiledByRegistrar 1..1 MS and
    $Extension-replacement-status named replacementStatus 0..1 MS
* extension[liveBirthCertificateNumber] ^short = "Birth Number"
* extension[liveBirthLocalFileNumber] ^short = "Local File No."
* extension[dateFiledByRegistrar] ^short = "Date filed by registrar"
* status MS
* status ^short = "In the case of a live birth sent in error, a status of 'entered-in-error' must be set."
* status ^definition = "In the case of a live birth sent in error, a status of 'entered-in-error' must be set."
* type = $loinc#92011-6
* type MS
* type ^short = "Jurisdiction live birth report Document"
* type ^definition = "Jurisdiction live birth report Document"
* subject 1.. MS
* subject only Reference(Patient-child-ihe-vr)
* subject ^short = "The subject of the composition is the newborn baby"
* subject ^definition = "The subject of the composition as a whole is the newborn baby. Different sections in the composition have different focus (e.g.: the mother)."
* encounter only Reference(Encounter-birth-ihe)
* encounter MS
* encounter ^short = "The Encounter for the Composition is the newborn's birth encounter."
* encounter ^definition = "The Encounter for the Composition is the newborn's birth encounter. This Encounter links to the mother's encounter by the Encounter.partOf data element."
* encounter.extension ..1
* encounter.extension only $Extension-encounter-maternity-reference
* date MS
* date ^short = "Date report completed"
* author ..1 MS
* author only Reference(Organization)
* author ^short = "The author is the jurisdictional Vital Records Office."
* author ^definition = "The author is the jurisdictional Vital Records Office."
* section MS
* section ^slicing.discriminator.type = #pattern
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open
* section ^short = "The Composition is broken into sections that, where possible, align with the sections in the Live Birth Certificate."
* section ^definition = "The Composition is broken into sections that, where possible, align with the sections in the Live Birth Certificate. Various administrative and demographic data in the Birth Certificate are contained in other locations in the Composition, such as the Patient and Encounter profiles."
* section contains
    motherPrenatal 0..1 MS and
    medicalHealthInformation 0..1 MS and
    newbornInformation 0..1 MS and
    motherInformation 0..1 MS and
    fatherInformation 0..1 MS and
    EditFlags 1..1 MS
* section[motherPrenatal] ^short = "Mother (prenatal) section on the Live Birth Certificate"
* section[motherPrenatal] ^definition = "This section contains items from the Mother (prenatal) on theLive Birth Certificate."
* section[motherPrenatal].code 1.. MS
* section[motherPrenatal].code = $loinc#57073-9
* section[motherPrenatal].code ^short = "Prenatal records"
* section[motherPrenatal].code ^definition = "Prenatal records"
* section[motherPrenatal].focus 1.. MS
* section[motherPrenatal].focus only Reference(Patient-mother-ihe-vr)
* section[motherPrenatal].focus ^short = "The focus of this section is the mother"
* section[motherPrenatal].focus ^definition = "The subject of the composition as a whole is the newborn baby. The focus of this section in the composition is the mother."
* section[motherPrenatal].entry 1.. MS
* section[motherPrenatal].entry ^slicing.discriminator.type = #profile
* section[motherPrenatal].entry ^slicing.discriminator.path = "$this.resolve()"
* section[motherPrenatal].entry ^slicing.ordered = false
* section[motherPrenatal].entry ^slicing.rules = #open
* section[motherPrenatal].entry ^short = "Entries that are contained in the Mother Prenatal section"
* section[motherPrenatal].entry ^definition = "Entries that are contained in the Mother Prenatal section"
* section[motherPrenatal].entry contains
    plannedToDeliverAtHome 0..1 MS and
    firstPrenatalCareVisit 0..1 MS and
    numberPrenatalCareVisits 0..1 MS and
    dateLastNormalMenses 0..1 MS and
    numberNowLiving 0..1 MS and
    numberNowDead 0..1 MS and
    dateLastLiveBirth 0..1 MS and
    numberOtherOutcomes 0..1 MS and
    dateLastOtherOutcome 0..1 MS and
    principalSourceOfPayment 0..1 MS and
    mothersWeightAtDelivery 0..1 MS and
    mothersHeight 0..1 MS and
    mothersPrepregnancyWeight 0..1 MS and
    motherReceivedWICFood 0..1 MS and
    cigaretteSmokingBeforeDuringPregnancy 0..4 MS
* section[motherPrenatal].entry[plannedToDeliverAtHome] only Reference(Observation-planned-to-deliver-at-home-ihe)
* section[motherPrenatal].entry[plannedToDeliverAtHome] ^short = "Planned to deliver at home"
* section[motherPrenatal].entry[plannedToDeliverAtHome] ^definition = "Planned to deliver at home"
* section[motherPrenatal].entry[firstPrenatalCareVisit] only Reference(Observation-date-of-first-prenatal-care-visit-ihe)
* section[motherPrenatal].entry[firstPrenatalCareVisit] ^short = "First prenatal care visit"
* section[motherPrenatal].entry[firstPrenatalCareVisit] ^definition = "Date that mother had her first prenatal care visit."
* section[motherPrenatal].entry[numberPrenatalCareVisits] only Reference(Observation-number-prenatal-visits-ihe-vr)
* section[motherPrenatal].entry[numberPrenatalCareVisits] ^short = "Number of prenatal care visits"
* section[motherPrenatal].entry[numberPrenatalCareVisits] ^definition = "Those visits which are listed in the mother's prenatal care and/or facility records."
* section[motherPrenatal].entry[dateLastNormalMenses] only Reference(Observation-last-menstrual-period-ihe-vr)
* section[motherPrenatal].entry[dateLastNormalMenses] ^short = "Date last normal menses began"
* section[motherPrenatal].entry[dateLastNormalMenses] ^definition = "Date that the mother's last normal menses began. This item is used to compute the gestational age of the infant."
* section[motherPrenatal].entry[numberNowLiving] only Reference(Observation-number-births-now-living-ihe-vr)
* section[motherPrenatal].entry[numberNowLiving] ^short = "Number of previous live births now living"
* section[motherPrenatal].entry[numberNowLiving] ^definition = "The pregnancy history of the mother with respect to previous children born alive"
* section[motherPrenatal].entry[numberNowDead] only Reference(Observation-number-births-now-dead-ihe-vr)
* section[motherPrenatal].entry[numberNowDead] ^short = "Number of previous live births now dead"
* section[motherPrenatal].entry[numberNowDead] ^definition = "The pregnancy history of the mother with respect to previous children born alive"
* section[motherPrenatal].entry[dateLastLiveBirth] only Reference(Observation-date-of-last-live-birth-ihe)
* section[motherPrenatal].entry[dateLastLiveBirth] ^short = "Date of last live birth"
* section[motherPrenatal].entry[dateLastLiveBirth] ^definition = "The pregnancy history of the mother with respect to previous children born alive"
* section[motherPrenatal].entry[numberOtherOutcomes] only Reference(Observation-number-other-pregnancy-outcomes-ihe-vr)
* section[motherPrenatal].entry[numberOtherOutcomes] ^short = "Number of other pregnancy outcomes"
* section[motherPrenatal].entry[numberOtherOutcomes] ^definition = "The pregnancy history of the mother with respect to other pregnancy outcomes (included pregnancy losses of any gestational age, e.g., spontaneous or induced losses or ectopic pregnancies)."
* section[motherPrenatal].entry[dateLastOtherOutcome] only Reference(Observation-date-of-last-other-pregnancy-outcome-ihe)
* section[motherPrenatal].entry[dateLastOtherOutcome] ^short = "Date of last other pregnancy outcome"
* section[motherPrenatal].entry[dateLastOtherOutcome] ^definition = "The pregnancy history of the mother with respect to other pregnancy outcomes (included pregnancy losses of any gestational age, e.g., spontaneous or induced losses or ectopic pregnancies)."
* section[motherPrenatal].entry[principalSourceOfPayment] only Reference(Coverage-principal-payer-for-delivery)
* section[motherPrenatal].entry[principalSourceOfPayment] ^short = "Principal source of payment for this delivery"
* section[motherPrenatal].entry[principalSourceOfPayment] ^definition = "The principal payer for this delivery"
* section[motherPrenatal].entry[mothersWeightAtDelivery] only Reference(Observation-mother-delivery-weight-ihe-vr)
* section[motherPrenatal].entry[mothersWeightAtDelivery] ^short = "Mother's weight at delivery"
* section[motherPrenatal].entry[mothersWeightAtDelivery] ^definition = "The mother's weight at the time of delivery"
* section[motherPrenatal].entry[mothersHeight] only Reference(Observation-mother-height-ihe-vr)
* section[motherPrenatal].entry[mothersHeight] ^short = "Mother's height"
* section[motherPrenatal].entry[mothersHeight] ^definition = "The mother's height"
* section[motherPrenatal].entry[mothersPrepregnancyWeight] only Reference(Observation-mother-prepregnancy-weight-ihe-vr)
* section[motherPrenatal].entry[mothersPrepregnancyWeight] ^short = "Mother's prepregnancy weight"
* section[motherPrenatal].entry[mothersPrepregnancyWeight] ^definition = "The mother's prepregnancy weight"
* section[motherPrenatal].entry[motherReceivedWICFood] only Reference(Observation-mother-received-wic-food-ihe)
* section[motherPrenatal].entry[motherReceivedWICFood] ^short = "Use of the WIC nutritional program by the mother"
* section[motherPrenatal].entry[motherReceivedWICFood] ^definition = "Use of the Women, Infant's, and Children (WIC) nutritional program by the mother during the pregnancy."
* section[motherPrenatal].entry[cigaretteSmokingBeforeDuringPregnancy] only Reference(Observation-cigarette-smoking-before-during-pregnancy-ihe)
* section[motherPrenatal].entry[cigaretteSmokingBeforeDuringPregnancy] ^short = "Cigarettes smoked by the mother before and during the pregnancy"
* section[motherPrenatal].entry[cigaretteSmokingBeforeDuringPregnancy] ^definition = "The number of cigarettes or packs of cigarettes the mother smoked 3 months before and at various intervals during the pregnancy"
* section[medicalHealthInformation] ^short = "Medical and Health Information section on the Live Birth Certificate"
* section[medicalHealthInformation] ^definition = "This section contains items from the Medical and Health Information section on the Live Birth Certificate."
* section[medicalHealthInformation].code 1.. MS
* section[medicalHealthInformation].code = $loinc#55752-0
* section[medicalHealthInformation].code ^short = "Clinical information"
* section[medicalHealthInformation].code ^definition = "Clinical information"
* section[medicalHealthInformation].focus 1.. MS
* section[medicalHealthInformation].focus only Reference(Patient-mother-ihe-vr)
* section[medicalHealthInformation].focus ^short = "The focus of this section is the mother"
* section[medicalHealthInformation].focus ^definition = "The subject of the composition as a whole is the newborn baby. The focus of this section in the composition is the mother."
* section[medicalHealthInformation].entry 1.. MS
* section[medicalHealthInformation].entry ^slicing.discriminator.type = #profile
* section[medicalHealthInformation].entry ^slicing.discriminator.path = "$this.resolve()"
* section[medicalHealthInformation].entry ^slicing.ordered = false
* section[medicalHealthInformation].entry ^slicing.rules = #open
* section[medicalHealthInformation].entry ^short = "Entries that are contained in the medical and health information section"
* section[medicalHealthInformation].entry ^definition = "Entries that are contained in the medical and health information section"
* section[medicalHealthInformation].entry contains
    pregnancyRiskFactors 0..* MS and
    numberPreviousCesareans 0..1 MS and
    infectionsDuringPregnancy 0..* MS and
    obstetricProcedures 1..1 MS and
    characteristicsLaborDelivery 0..* MS and
    fetalPresentation 0..1 MS and
    finalRouteMethodDelivery 0..1 MS and
    maternalMorbidity 0..* MS
* section[medicalHealthInformation].entry[pregnancyRiskFactors] only Reference(Condition-prepregnancy-diabetes-ihe-vr or Condition-gestational-diabetes-ihe-vr or Condition-prepregnancy-hypertension-ihe-vr or Condition-gestational-hypertension-ihe-vr or Condition-eclampsia-hypertension-ihe-vr or Observation-previous-preterm-birth-ihe-vr or Procedure-infertility-treatment-ihe-vr or Procedure-artificial-insemination-ihe-vr or Procedure-assisted-fertilization-ihe-vr or Observation-previous-cesarean-ihe-vr or Observation-none-of-specified-pregnancy-risk-factors-ihe-vr)
* section[medicalHealthInformation].entry[pregnancyRiskFactors] ^short = "Risk factors in this pregnancy"
* section[medicalHealthInformation].entry[pregnancyRiskFactors] ^definition = "Selected medical risk factors of the mother during this pregnancy"
* section[medicalHealthInformation].entry[numberPreviousCesareans] only Reference(Observation-number-previous-cesareans-ihe-vr)
* section[medicalHealthInformation].entry[numberPreviousCesareans] ^short = "If mother had a previous cesarean delivery, how many"
* section[medicalHealthInformation].entry[numberPreviousCesareans] ^definition = "Number of previous cesarean deliveries."
* section[medicalHealthInformation].entry[infectionsDuringPregnancy] only Reference(Condition-infection-present-during-pregnancy-ihe)
* section[medicalHealthInformation].entry[infectionsDuringPregnancy] ^short = "Infections present and/or treated during this pregnancy"
* section[medicalHealthInformation].entry[infectionsDuringPregnancy] ^definition = "Selected infections that the mother had or was treated for during the course of this pregnancy"
* section[medicalHealthInformation].entry[obstetricProcedures] only Reference(Procedure-obstetric-ihe)
* section[medicalHealthInformation].entry[obstetricProcedures] ^short = "Obstetric procedures"
* section[medicalHealthInformation].entry[obstetricProcedures] ^definition = "Selected medical treatments or invasive/manipulative procedures performed during this pregnancy specifically for management of labor and delivery"
* section[medicalHealthInformation].entry[characteristicsLaborDelivery] only Reference(Procedure-induction-of-labor-ihe or Procedure-augmentation-of-labor-ihe or Observation-steroids-fetal-lung-maturation-ihe or Observation-antibiotics-during-labor-ihe or Condition-chorioamnionitis-ihe or Procedure-epidural-or-spinal-anesthesia-ihe or Observation-none-of-specified-characteristics-labor-delivery-ihe)
* section[medicalHealthInformation].entry[characteristicsLaborDelivery] ^short = "Characteristics of labor and delivery"
* section[medicalHealthInformation].entry[characteristicsLaborDelivery] ^definition = "Information about the course of labor and delivery"
* section[medicalHealthInformation].entry[fetalPresentation] only Reference(Observation-fetal-presentation-ihe)
* section[medicalHealthInformation].entry[fetalPresentation] ^short = "Fetal presentation at birth"
* section[medicalHealthInformation].entry[fetalPresentation] ^definition = "Fetal presentation at birth"
* section[medicalHealthInformation].entry[finalRouteMethodDelivery] only Reference(Procedure-final-route-method-delivery-ihe)
* section[medicalHealthInformation].entry[finalRouteMethodDelivery] ^short = "Final route and method of delivery"
* section[medicalHealthInformation].entry[finalRouteMethodDelivery] ^definition = "Final route and method of delivery"
* section[medicalHealthInformation].entry[maternalMorbidity] only Reference(Procedure-blood-transfusion-ihe or Condition-perineal-laceration-ihe or Condition-ruptured-uterus-ihe or Procedure-unplanned-hysterectomy-ihe or Observation-icu-admission-ihe or Observation-none-of-specified-maternal-morbidities-ihe)
* section[medicalHealthInformation].entry[maternalMorbidity] ^short = "Maternal morbidity (complications associated with labor and delivery)"
* section[medicalHealthInformation].entry[maternalMorbidity] ^definition = "Serious complications experienced by the mother associated with labor and delivery"
* section[newbornInformation] ^short = "Newborn section on the Live Birth Certificate"
* section[newbornInformation] ^definition = "This section contains items from the newborn section on the Live Birth Certificate."
* section[newbornInformation].code 1.. MS
* section[newbornInformation].code = $loinc#57075-4
* section[newbornInformation].code ^short = "Newborn delivery information"
* section[newbornInformation].code ^definition = "Newborn delivery information"
* section[newbornInformation].entry 1.. MS
* section[newbornInformation].entry ^slicing.discriminator.type = #profile
* section[newbornInformation].entry ^slicing.discriminator.path = "$this.resolve()"
* section[newbornInformation].entry ^slicing.ordered = false
* section[newbornInformation].entry ^slicing.rules = #open
* section[newbornInformation].entry ^short = "Entries that are contained in the newborn section"
* section[newbornInformation].entry ^definition = "Entries that are contained in the newborn section"
* section[newbornInformation].entry contains
    birthWeight 0..1 MS and
    gestationalAgeAtDelivery 0..1 MS and
    ApgarScore 0..2 MS and
    numberLiveBirthsThisDelivery 0..1 MS and
    abnormalConditionsNewborn 0..* MS and
    congenitalAnomaliesNewborn 0..* MS and
    infantLiving 0..1 MS and
    infantBreastfedAtDischarge 0..1 MS
* section[newbornInformation].entry[birthWeight] only Reference(Observation-birth-weight-ihe-vr)
* section[newbornInformation].entry[birthWeight] ^short = "Birthweight"
* section[newbornInformation].entry[birthWeight] ^definition = "The weight of the infant/fetus at birth/delivery"
* section[newbornInformation].entry[gestationalAgeAtDelivery] only Reference(Observation-gestational-age-at-delivery-ihe-vr)
* section[newbornInformation].entry[gestationalAgeAtDelivery] ^short = "Obstetric estimate of gestation"
* section[newbornInformation].entry[gestationalAgeAtDelivery] ^definition = "The obstetric estimate of the infant’s gestation in completed weeks based on the birth/delivery attendant’s final estimate of gestation which should be determined by all perinatal factors and assessments such as ultrasound, but not the neonatal exam"
* section[newbornInformation].entry[ApgarScore] only Reference(Observation-apgar-score-ihe-vr)
* section[newbornInformation].entry[ApgarScore] ^short = "Apgar Score - while the Apgar timing value set contains 3 possible values, 5 and 10 are the only scores used."
* section[newbornInformation].entry[ApgarScore] ^definition = "The Apgar Score for the child."
* section[newbornInformation].entry[numberLiveBirthsThisDelivery] only Reference(Observation-number-live-births-this-delivery-ihe-vr)
* section[newbornInformation].entry[numberLiveBirthsThisDelivery] ^short = "Number of live births this delivery"
* section[newbornInformation].entry[abnormalConditionsNewborn] only Reference(Procedure-assisted-ventilation-following-delivery-ihe or Procedure-assisted-ventilation-more-than-six-hours-ihe or Observation-nicu-admission-ihe or Procedure-surfactant-replacement-therapy-ihe or Procedure-antibiotic-suspected-neonatal-sepsis-ihe or Condition-seizure-ihe or Observation-none-of-specified-abnormal-conditions-of-newborn-ihe)
* section[newbornInformation].entry[abnormalConditionsNewborn] ^short = "Abnormal conditions of the newborn"
* section[newbornInformation].entry[abnormalConditionsNewborn] ^definition = "Disorders or significant morbidity experienced by the newborn infant"
* section[newbornInformation].entry[congenitalAnomaliesNewborn] only Reference(Condition-congenital-anomaly-of-newborn-ihe)
* section[newbornInformation].entry[congenitalAnomaliesNewborn] ^short = "Congenital anomolies of the newborn"
* section[newbornInformation].entry[congenitalAnomaliesNewborn] ^definition = "Malformations of the newborn diagnosed prenatally or after delivery"
* section[newbornInformation].entry[infantLiving] only Reference(Observation-infant-living-ihe-vr)
* section[newbornInformation].entry[infantLiving] ^short = "Is infant living at time of report?"
* section[newbornInformation].entry[infantLiving] ^definition = "Information on the infant's survival"
* section[newbornInformation].entry[infantBreastfedAtDischarge] only Reference(Observation-infant-breastfed-at-discharge-ihe)
* section[newbornInformation].entry[infantBreastfedAtDischarge] ^short = "Is infant being breastfed at discharge?"
* section[newbornInformation].entry[infantBreastfedAtDischarge] ^definition = "Information on whether the infant is being breastfed at discharge from the hospital"
* section[motherInformation] ^short = "Mother administrative section on the Live Birth Certificate"
* section[motherInformation] ^definition = "This section contains items from the Mother administrative section on the Live Birth Certificate."
* section[motherInformation].code 1.. MS
* section[motherInformation].code = $loinc#92014-0
* section[motherInformation].code ^short = "Mother's administrative information"
* section[motherInformation].code ^definition = "Mother's administrative information"
* section[motherInformation].focus 1.. MS
* section[motherInformation].focus only Reference(Patient-mother-ihe-vr)
* section[motherInformation].focus ^short = "The focus of this section is the mother"
* section[motherInformation].focus ^definition = "The subject of the composition as a whole is the newborn baby. The focus of this section in the composition is the mother."
* section[motherInformation].entry 1.. MS
* section[motherInformation].entry ^slicing.discriminator.type = #profile
* section[motherInformation].entry ^slicing.discriminator.path = "$this.resolve()"
* section[motherInformation].entry ^slicing.ordered = false
* section[motherInformation].entry ^slicing.rules = #open
* section[motherInformation].entry ^short = "Entries that are contained in the motherInformation section"
* section[motherInformation].entry ^definition = "Entries that are contained in the motherInformation section"
* section[motherInformation].entry contains
    marriedDuringPregnancy 0..1 MS and
    ssnRequestedForChild 0..1 MS and
    mothersEducation 0..1 MS
* section[motherInformation].entry[marriedDuringPregnancy] only Reference(Observation-mother-married-during-pregnancy-ihe)
* section[motherInformation].entry[marriedDuringPregnancy] ^short = "Mother married during pregnancy"
* section[motherInformation].entry[marriedDuringPregnancy] ^definition = "Was mother married at conception, at the time of birth, or at any time between conception and giving birth?"
* section[motherInformation].entry[ssnRequestedForChild] only Reference(Observation-NI-requested-for-child-ihe)
* section[motherInformation].entry[ssnRequestedForChild] ^short = "Was social security number requested for the child"
* section[motherInformation].entry[ssnRequestedForChild] ^definition = "Was social security number requested for the child"
* section[motherInformation].entry[mothersEducation] only Reference(Observation-parent-education-level-ihe-vr)
* section[motherInformation].entry[mothersEducation] ^short = "Mother's education"
* section[motherInformation].entry[mothersEducation] ^definition = "Mother's education"
* section[fatherInformation] ^short = "Father section on the Live Birth Certificate"
* section[fatherInformation] ^definition = "This section contains items from the father section on the Live Birth Certificate."
* section[fatherInformation].code 1.. MS
* section[fatherInformation].code = $loinc#92013-2
* section[fatherInformation].code ^short = "Father's administrative information"
* section[fatherInformation].code ^definition = "Father's administrative information"
* section[fatherInformation].focus 1.. MS
* section[fatherInformation].focus only Reference(RelatedPerson-father-natural-ihe-vr)
* section[fatherInformation].focus ^short = "The focus of this section is the father"
* section[fatherInformation].focus ^definition = "The subject of the composition as a whole is the newborn baby. The focus of this section in the composition is the father."
* section[fatherInformation].entry 1.. MS
* section[fatherInformation].entry ^slicing.discriminator.type = #profile
* section[fatherInformation].entry ^slicing.discriminator.path = "$this.resolve()"
* section[fatherInformation].entry ^slicing.ordered = false
* section[fatherInformation].entry ^slicing.rules = #open
* section[fatherInformation].entry ^short = "Entries that are contained in the fatherInformation section"
* section[fatherInformation].entry ^definition = "Entries that are contained in the fatherInformation section"
* section[fatherInformation].entry contains
    paternityAcknowledgementSigned 0..1 MS and
    fathersEducation 0..1 MS
* section[fatherInformation].entry[paternityAcknowledgementSigned] only Reference(Observation-paternity-acknowledgement-signed-ihe)
* section[fatherInformation].entry[paternityAcknowledgementSigned] ^short = "Paternity acknowledgement signed by father"
* section[fatherInformation].entry[paternityAcknowledgementSigned] ^definition = "Whether or not a paternity acknowledgement was signed by the father if the mother was not married at conception, at the time of birth, or at any time between conception and giving birth."
* section[fatherInformation].entry[fathersEducation] only Reference(Observation-parent-education-level-ihe-vr)
* section[fatherInformation].entry[fathersEducation] ^short = "Father's education"
* section[fatherInformation].entry[fathersEducation] ^definition = "Father's education"
* section[EditFlags] ^short = "Edit Flags Section"
* section[EditFlags] ^definition = "This section contains the edit flags that specify whether the originally provided data passed validation checks. These validation checks are done at the jurisdiction prior to sending to the National Statistical Agency and are based on edit criteria in the Birth Edit Specifications for the 2003 Proposed Revision of the U.S. Standard Certificate of Birth and the Fetal Death Edit Specifications for the 2003 Revision of the U.S. Standard Report of Fetal Death."
* section[EditFlags].code 1.. MS
* section[EditFlags].code = $loinc#92012-4
* section[EditFlags].code ^short = "Edit flags section"
* section[EditFlags].entry 12..12 MS
* section[EditFlags].entry ^slicing.discriminator.type = #profile
* section[EditFlags].entry ^slicing.discriminator.path = "$this.resolve()"
* section[EditFlags].entry ^slicing.rules = #open
* section[EditFlags].entry contains
    editFlagBirthweight 1..1 and
    editFlagEstimateOfGestation 1..1 and
    editFlagFathersDateOfBirth 1..1 and
    editFlagFathersEducation 1..1 and
    editFlagMothersDateOfBirth 1..1 and
    editFlagMothersDeliveryWeight 1..1 and
    editFlagMothersEducation 1..1 and
    editFlagMothersHeight 1..1 and
    editFlagMothersPrepregnancyWeight 1..1 and
    editFlagNumberPrenatalCareVisits 1..1 and
    editFlagNumberPreviousCesareans 1..1 and
    editFlagPlurality 1..1
* section[EditFlags].entry[editFlagBirthweight] only Reference(Observation-edit-flag-birthweight)
* section[EditFlags].entry[editFlagEstimateOfGestation] only Reference(Observation-edit-flag-estimate-of-gestation)
* section[EditFlags].entry[editFlagFathersDateOfBirth] only Reference(Observation-edit-flag-fathers-date-of-birth)
* section[EditFlags].entry[editFlagFathersEducation] only Reference(Observation-edit-flag-fathers-education)
* section[EditFlags].entry[editFlagMothersDateOfBirth] only Reference(Observation-edit-flag-mothers-date-of-birth)
* section[EditFlags].entry[editFlagMothersDeliveryWeight] only Reference(Observation-edit-flag-mothers-delivery-weight)
* section[EditFlags].entry[editFlagMothersEducation] only Reference(Observation-edit-flag-mothers-education)
* section[EditFlags].entry[editFlagMothersHeight] only Reference(Observation-edit-flag-mothers-height)
* section[EditFlags].entry[editFlagMothersPrepregnancyWeight] only Reference(Observation-edit-flag-mothers-prepregnancy-weight)
* section[EditFlags].entry[editFlagNumberPrenatalCareVisits] only Reference(Observation-edit-flag-number-prenatal-care-visits)
* section[EditFlags].entry[editFlagNumberPreviousCesareans] only Reference(Observation-edit-flag-number-previous-cesareans)
* section[EditFlags].entry[editFlagPlurality] only Reference(Observation-edit-flag-plurality)