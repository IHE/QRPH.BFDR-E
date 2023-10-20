Alias: $Extension-fetal-death-report-number = http://hl7.org/fhir/us/bfdr/StructureDefinition/Extension-fetal-death-report-number
Alias: $Extension-fetal-death-local-file-number = http://hl7.org/fhir/us/bfdr/StructureDefinition/Extension-fetal-death-local-file-number
Alias: $Extension-date-received-by-registrar = http://hl7.org/fhir/us/bfdr/StructureDefinition/Extension-date-received-by-registrar
Alias: $Extension-replacement-status = http://hl7.org/fhir/us/bfdr/StructureDefinition/Extension-replacement-status

Profile: IHECompositionProviderFetalDeathReport
Parent: Composition
Id: Composition-provider-fetal-death-report-ihe
Title: "Composition - Provider Fetal Death Report"
Description: "This Composition profile contains constraints to address the use case describing the need for fetal death information to be recorded and communicated to the jurisdictional Vital Records Office."

* extension MS
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    $Extension-fetal-death-report-number named fetalDeathReportNumber 0..1 MS and
    $Extension-fetal-death-local-file-number named fetalDeathLocalFileNumber 0..1 MS and
    $Extension-date-received-by-registrar named dateReceivedByRegistrar 1..1 MS and
    $Extension-replacement-status named replacementStatus 0..1 MS
* extension[fetalDeathReportNumber] ^short = "State File Number"
* extension[fetalDeathLocalFileNumber] ^short = "Local File No."
* status MS
* status ^short = "In the case of a fetal death sent in error, a status of 'entered-in-error' must be set."
* status ^definition = "In the case of a fetal death sent in error, a status of 'entered-in-error' must be set."
* type = $loinc#69045-3
* type MS
* type ^short = "U.S. standard report of fetal death - 2003 revision"
* type ^definition = "U.S. standard report of fetal death - 2003 revision"
* subject 1.. MS
* subject only Reference(Patient-decedent-fetus-ihe-vr)
* subject ^short = "The subject of the composition is the decedent fetus: the \"US Standard Patient’s Worksheet for the Report of Fetal Death\" should be the source of truth for the name of the decedent fetus."
* subject ^definition = "The subject of the composition as a whole is the decedent fetus. Different sections in the composition have different focus (e.g.: the mother)."
* encounter only Reference(Encounter-maternity-ihe)
* encounter MS
* encounter ^short = "The Encounter for the Composition is the mother's maternity encounter."
* encounter ^definition = "The Encounter for the Composition is the mother's maternity encounter."
* encounter.extension only $Extension-encounter-maternity-reference
* date MS
* date ^short = "Date report completed"
* author ..1 MS
* author only Reference(Practitioner-ihe-vr)
* author ^short = "The author is the person who verifies/approves the accuracy of the data to be sent to the vital records system."
* author ^definition = "Name and title of person completing the report. May be, but need not be, the same as the attendant at delivery."
* section 1.. MS
* section ^slicing.discriminator.type = #pattern
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open
* section ^short = "The Composition is broken into sections that, where possible, align with the sections in the Fetal Death Report."
* section ^definition = "The Composition is broken into sections that, where possible, align with the sections in the Fetal Death Report. The sections are Mother, Mother Prenatal,  Medical and Health, and fetus. Various administrative and demographic data in the Death Report are contained in other locations in the Composition, such as the Patient and Encounter profiles."
* section contains
    motherPrenatal 0..1 MS and
    medicalHealthInformation 0..1 MS and
    fetus 0..1 MS and
    motherInformation 0..1 MS and
    fatherInformation 0..1 MS and
    patientsQuestionnaireResponse 0..1
* section[motherPrenatal] ^short = "Mother (prenatal) section on the Fetal Death Report"
* section[motherPrenatal] ^definition = "This section contains items from the Mother (prenatal) on theFetal Death Report."
* section[motherPrenatal].code 1.. MS
* section[motherPrenatal].code = $loinc#57073-9
* section[motherPrenatal].code ^short = "Prenatal records"
* section[motherPrenatal].code ^definition = "Prenatal records"
* section[motherPrenatal].focus 1.. MS
* section[motherPrenatal].focus only Reference(Patient-mother-ihe-vr)
* section[motherPrenatal].focus ^short = "The focus of this section is the mother: the \"US Standard Patient’s Worksheet for the Report of Fetal Death\" should be the source of truth for the mother's name, address, dob, birthplace, race, and ethnicity."
* section[motherPrenatal].focus ^definition = "The subject of the composition as a whole is the fetus baby. The focus of this section in the composition is the mother."
* section[motherPrenatal].entry MS
* section[motherPrenatal].entry ^slicing.discriminator.type = #profile
* section[motherPrenatal].entry ^slicing.discriminator.path = "$this.resolve()"
* section[motherPrenatal].entry ^slicing.ordered = false
* section[motherPrenatal].entry ^slicing.rules = #open
* section[motherPrenatal].entry ^short = "Entries that are contained in the Mother Prenatal section"
* section[motherPrenatal].entry ^definition = "Entries that are contained in the Mother Prenatal section"
* section[motherPrenatal].entry contains
    plannedToDeliverAtHome 0..1 MS and
    firstPrenatalCareVisit 0..1 MS and
    dateLastNormalMenses 0..1 MS and
    numberNowLiving 0..1 MS and
    numberNowDead 0..1 MS and
    dateLastLiveBirth 0..1 MS and
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
* section[motherPrenatal].entry[mothersHeight] only Reference(Observation-mother-height-ihe-vr)
* section[motherPrenatal].entry[mothersHeight] ^short = "Mother's height: the \"US Standard Patient’s Worksheet for the Report of Fetal Death\" should be the source of truth for this data element."
* section[motherPrenatal].entry[mothersHeight] ^definition = "The mother's height"
* section[motherPrenatal].entry[mothersPrepregnancyWeight] only Reference(Observation-mother-prepregnancy-weight-ihe-vr)
* section[motherPrenatal].entry[mothersPrepregnancyWeight] ^short = "Mother's prepregnancy weight: the \"US Standard Patient’s Worksheet for the Report of Fetal Death\" should be the source of truth for this data element."
* section[motherPrenatal].entry[mothersPrepregnancyWeight] ^definition = "The mother's prepregnancy weight"
* section[motherPrenatal].entry[motherReceivedWICFood] only Reference(Observation-mother-received-wic-food-ihe)
* section[motherPrenatal].entry[motherReceivedWICFood] ^short = "Use of the WIC nutritional program by the mother: the \"US Standard Patient’s Worksheet for the Report of Fetal Death\" should be the source of truth for this data element."
* section[motherPrenatal].entry[motherReceivedWICFood] ^definition = "Use of the Women, Infant's, and Children (WIC) nutritional program by the mother during the pregnancy."
* section[motherPrenatal].entry[cigaretteSmokingBeforeDuringPregnancy] only Reference(Observation-cigarette-smoking-before-during-pregnancy-ihe)
* section[motherPrenatal].entry[cigaretteSmokingBeforeDuringPregnancy] ^short = "Cigarettes smoked by the mother before and during the pregnancy: the \"US Standard Patient’s Worksheet for the Report of Fetal Death\" should be the source of truth for this data element."
* section[motherPrenatal].entry[cigaretteSmokingBeforeDuringPregnancy] ^definition = "The number of cigarettes or packs of cigarettes the mother smoked 3 months before and at various intervals during the pregnancy"
* section[medicalHealthInformation] ^short = "Medical and Health Information section on the Fetal Death Report"
* section[medicalHealthInformation] ^definition = "This section contains items from the Medical and Health Information section on the Fetal Death Report."
* section[medicalHealthInformation].code 1.. MS
* section[medicalHealthInformation].code = $loinc#55752-0
* section[medicalHealthInformation].code ^short = "Clinical information"
* section[medicalHealthInformation].code ^definition = "Clinical information"
* section[medicalHealthInformation].focus 1.. MS
* section[medicalHealthInformation].focus only Reference(Patient-mother-ihe-vr)
* section[medicalHealthInformation].focus ^short = "The focus of this section is the mother"
* section[medicalHealthInformation].focus ^definition = "The subject of the composition as a whole is the fetus baby. The focus of this section in the composition is the mother."
* section[medicalHealthInformation].entry MS
* section[medicalHealthInformation].entry ^slicing.discriminator.type = #profile
* section[medicalHealthInformation].entry ^slicing.discriminator.path = "$this.resolve()"
* section[medicalHealthInformation].entry ^slicing.ordered = false
* section[medicalHealthInformation].entry ^slicing.rules = #open
* section[medicalHealthInformation].entry ^short = "Entries that are contained in the medical and health information section"
* section[medicalHealthInformation].entry ^definition = "Entries that are contained in the medical and health information section"
* section[medicalHealthInformation].entry contains
    pregnancyRiskFactors 0..* MS and
    numberPreviousCesareans 0..1 MS and
    fetalPresentation 0..1 MS and
    finalRouteMethodDelivery 0..1 MS and
    maternalMorbidity 0..* MS
* section[medicalHealthInformation].entry[pregnancyRiskFactors] only Reference(Condition-prepregnancy-diabetes-ihe-vr or Condition-gestational-diabetes-ihe-vr or Condition-prepregnancy-hypertension-ihe-vr or Condition-gestational-hypertension-ihe-vr or Condition-eclampsia-hypertension-ihe-vr or Observation-previous-preterm-birth-ihe-vr or Procedure-infertility-treatment-ihe-vr or Procedure-artificial-insemination-ihe-vr or Procedure-assisted-fertilization-ihe-vr or Observation-previous-cesarean-ihe-vr or Observation-none-of-specified-pregnancy-risk-factors-ihe-vr)
* section[medicalHealthInformation].entry[pregnancyRiskFactors] ^short = "Risk factors in this pregnancy"
* section[medicalHealthInformation].entry[pregnancyRiskFactors] ^definition = "Selected medical risk factors of the mother during this pregnancy"
* section[medicalHealthInformation].entry[numberPreviousCesareans] only Reference(Observation-number-previous-cesareans-ihe-vr)
* section[medicalHealthInformation].entry[numberPreviousCesareans] ^short = "If mother had a previous cesarean delivery, how many"
* section[medicalHealthInformation].entry[numberPreviousCesareans] ^definition = "Number of previous cesarean deliveries."
* section[medicalHealthInformation].entry[fetalPresentation] only Reference(Observation-fetal-presentation-ihe)
* section[medicalHealthInformation].entry[fetalPresentation] ^short = "Fetal presentation at birth"
* section[medicalHealthInformation].entry[fetalPresentation] ^definition = "Fetal presentation at birth"
* section[medicalHealthInformation].entry[finalRouteMethodDelivery] only Reference(Procedure-final-route-method-delivery-ihe)
* section[medicalHealthInformation].entry[finalRouteMethodDelivery] ^short = "Final route and method of delivery"
* section[medicalHealthInformation].entry[finalRouteMethodDelivery] ^definition = "Final route and method of delivery"
* section[medicalHealthInformation].entry[maternalMorbidity] only Reference(Procedure-blood-transfusion-ihe or Condition-perineal-laceration-ihe or Condition-ruptured-uterus-ihe or Procedure-unplanned-hysterectomy-ihe or Observation-icu-admission-ihe or Observation-none-of-specified-maternal-morbidities-ihe)
* section[medicalHealthInformation].entry[maternalMorbidity] ^short = "Maternal morbidity (complications associated with labor and delivery)"
* section[medicalHealthInformation].entry[maternalMorbidity] ^definition = "Serious complications experienced by the mother associated with labor and delivery"
* section[fetus] ^short = "fetus section on the Fetal Death Report"
* section[fetus] ^definition = "This section contains items from the fetus section on the Fetal Death Report."
* section[fetus].code 1.. MS
* section[fetus].code = $loinc#76400-1
* section[fetus].code ^short = "Fetal delivery information Document [US Standard Report of Fetal Death]"
* section[fetus].code ^definition = "Fetal delivery information Document [US Standard Report of Fetal Death]"
* section[fetus].entry MS
* section[fetus].entry ^slicing.discriminator.type = #profile
* section[fetus].entry ^slicing.discriminator.path = "$this.resolve()"
* section[fetus].entry ^slicing.ordered = false
* section[fetus].entry ^slicing.rules = #open
* section[fetus].entry ^short = "Entries that are contained in the fetus section"
* section[fetus].entry ^definition = "Entries that are contained in the fetus section"
* section[fetus].entry contains
    deliveryWeight 0..1 MS and
    gestationalAgeAtDelivery 0..1 MS and
    causeOfFetalDeath 0..1 MS and
    otherCauseOfDeath 0..* MS and
    estimatedTimeFetalDeath 1..1 MS and
    autopsyPerformed 0..1 MS and
    histologicalExamPerformed 0..1 MS and
    autopsyOrHistologicalExamUsed 0..1 MS and
    numberLiveBirthsThisDelivery 0..1 MS and
    numberFetalDeathsThisDelivery 0..1 MS
* section[fetus].entry[deliveryWeight] only Reference(Observation-birth-weight-ihe-vr)
* section[fetus].entry[deliveryWeight] ^short = "Delivery weight"
* section[fetus].entry[deliveryWeight] ^definition = "The weight of the infant/fetus at birth/delivery"
* section[fetus].entry[gestationalAgeAtDelivery] only Reference(Observation-gestational-age-at-delivery-ihe-vr)
* section[fetus].entry[gestationalAgeAtDelivery] ^short = "Obstetric estimate of gestation"
* section[fetus].entry[gestationalAgeAtDelivery] ^definition = "The obstetric estimate of the infant’s gestation in completed weeks based on the birth/delivery attendant’s final estimate of gestation which should be determined by all perinatal factors and assessments such as ultrasound, but not the neonatal exam"
* section[fetus].entry[causeOfFetalDeath] only Reference(Condition-fetal-death-cause-or-condition-ihe)
* section[fetus].entry[causeOfFetalDeath] ^short = "Initiating cause or condition of fetal death"
* section[fetus].entry[causeOfFetalDeath] ^definition = "Initiating cause or condition of fetal death"
* section[fetus].entry[otherCauseOfDeath] only Reference(Condition-fetal-death-other-cause-or-condition-ihe)
* section[fetus].entry[otherCauseOfDeath] ^short = "Another significant cause or condition for the death of the fetus."
* section[fetus].entry[otherCauseOfDeath] ^definition = "Another significant cause or condition for the death of the fetus."
* section[fetus].entry[estimatedTimeFetalDeath] only Reference(Observation-estimated-fetal-death-time-point-ihe)
* section[fetus].entry[estimatedTimeFetalDeath] ^short = "The estimated time of fetal death; the time of death is characterized by the relationship to the time of delivery."
* section[fetus].entry[estimatedTimeFetalDeath] ^definition = "The estimated time of fetal death; the time of death is characterized by the relationship to the time of delivery."
* section[fetus].entry[autopsyPerformed] only Reference(Observation-autopsy-performed-indicator-ihe-vr)
* section[fetus].entry[autopsyPerformed] ^short = "An indication if an autopsy has been performed on the subject."
* section[fetus].entry[autopsyPerformed] ^definition = "An indication if an autopsy has been performed on the subject."
* section[fetus].entry[histologicalExamPerformed] only Reference(Observation-histological-placental-exam-performed-ihe)
* section[fetus].entry[histologicalExamPerformed] ^short = "Whether or not a histological placental examination was performed."
* section[fetus].entry[histologicalExamPerformed] ^definition = "Whether or not a histological placental examination was performed."
* section[fetus].entry[autopsyOrHistologicalExamUsed] only Reference(Observation-autopsy-histological-exam-results-used-ihe)
* section[fetus].entry[autopsyOrHistologicalExamUsed] ^short = "Whether or not the results of a performed autopsy or a performed histological placental examination were used as part of determining the cause of death."
* section[fetus].entry[autopsyOrHistologicalExamUsed] ^definition = "Whether or not the results of a performed autopsy or a performed histological placental examination were used as part of determining the cause of death."
* section[fetus].entry[numberLiveBirthsThisDelivery] only Reference(Observation-number-live-births-this-delivery-ihe-vr)
* section[fetus].entry[numberLiveBirthsThisDelivery] ^short = "Number of live births this delivery"
* section[fetus].entry[numberFetalDeathsThisDelivery] only Reference(Observation-number-fetal-deaths-this-delivery-ihe-vr)
* section[fetus].entry[numberFetalDeathsThisDelivery] ^short = "Number of fetal deaths this delivery"
* section[motherInformation] ^short = "Mother administrative section on the Fetal Death Report"
* section[motherInformation] ^definition = "This section contains items from the Mother administrative section on the Fetal Death Report."
* section[motherInformation].code 1.. MS
* section[motherInformation].code = $loinc#92014-0
* section[motherInformation].code ^short = "Mother's administrative information"
* section[motherInformation].code ^definition = "Mother's administrative information"
* section[motherInformation].focus 1.. MS
* section[motherInformation].focus only Reference(Patient-mother-ihe-vr)
* section[motherInformation].focus ^short = "The focus of this section is the mother"
* section[motherInformation].focus ^definition = "The subject of the composition as a whole is the fetus baby. The focus of this section in the composition is the mother."
* section[motherInformation].entry MS
* section[motherInformation].entry ^slicing.discriminator.type = #profile
* section[motherInformation].entry ^slicing.discriminator.path = "$this.resolve()"
* section[motherInformation].entry ^slicing.ordered = false
* section[motherInformation].entry ^slicing.rules = #open
* section[motherInformation].entry ^short = "Entries that are contained in the motherInformation section"
* section[motherInformation].entry ^definition = "Entries that are contained in the motherInformation section"
* section[motherInformation].entry contains mothersEducation 0..1 MS
* section[motherInformation].entry[mothersEducation] only Reference(Observation-parent-education-level-ihe-vr)
* section[motherInformation].entry[mothersEducation] ^short = "Mother's education: the \"US Standard Patient’s Worksheet for the Report of Fetal Death\" should be the source of truth for this data element."
* section[motherInformation].entry[mothersEducation] ^definition = "Mother's education"
* section[fatherInformation] ^short = "Father section on the Fetal Death Report"
* section[fatherInformation] ^definition = "This section contains items from the father section on the Death Report."
* section[fatherInformation].code 1.. MS
* section[fatherInformation].code = $loinc#92013-2
* section[fatherInformation].code ^short = "Father's administrative information"
* section[fatherInformation].code ^definition = "Father's administrative information"
* section[fatherInformation].focus 1.. MS
* section[fatherInformation].focus only Reference(RelatedPerson-father-natural-ihe-vr)
* section[fatherInformation].focus ^short = "The focus of this section is the father: the \"US Standard Patient’s Worksheet for the Report of Fetal Death\" should be the source of truth for the father's name, dob, and birthplace."
* section[fatherInformation].focus ^definition = "The subject of the composition as a whole is the newborn baby. The focus of this section in the composition is the father."
* section[patientsQuestionnaireResponse] ^short = "Optional section containing a QuestionnaireResponse with recorded answers to the Questionnaire - Patient's Worksheet for Fetal Death Report"
* section[patientsQuestionnaireResponse].code 1..
* section[patientsQuestionnaireResponse].code = $loinc#74465-6
* section[patientsQuestionnaireResponse].code ^short = "Questionnaire response Document"
* section[patientsQuestionnaireResponse].entry 1..1
* section[patientsQuestionnaireResponse].entry only Reference(QuestionnaireResponse)
* section[patientsQuestionnaireResponse].entry ^short = "QuestionnaireResponse with recorded answers to the Questionnaire - Patient's Worksheet for Fetal Death Report"