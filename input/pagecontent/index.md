
**This Implementation Guide template includes skeleton pages for each part of an IHE supplement. The instructions for how to fill out these sections can be found in the included [Supplement Template](https://github.com/IHE/supplement-template/blob/master/suppl_template.md). This supplement template should not be included in your github repo or publication. It is included here for easy reference.**

**Overview**
Vital Records birth certificates and fetal death reports include important demographic, medical and key information about the antepartum period, the labor and delivery process and the newborn/fetal death. Much of the medical and health information collected for the birth certificate and fetal death report can be pre-populated with information already available in the
Electronic Health Record (EMR). A responsible Health Care Provider (HCP) or designated representative must review and complete the information to ensure data quality for vital registration purposes. These data may then be used by public health agencies to track maternal and infant health to target interventions for at risk populations. The national statistics agencies have a long and enduring history that serves to provide essential data on births and deaths. Within the United States, for instance, this is the oldest and most successful example of inter-governmental data sharing in Public Health. Currently, these data typically are gathered by hospital personnel from the hospital’s medical records using paper worksheets. The process of capturing Vital Records information manually is duplicative, labor-intensive, costly, and can be error prone. As a result, the timeliness and quality of these data are adversely affected.

<div markdown="1" class="stu-note">

| [Significant Changes, Open and Closed Issues](issues.html) |
{: .grid}

</div>

### Organization of This Guide

This guide is organized into the following sections:

1. Volume 1:
   1. [Introduction](volume-1.html)
   1. [Actors, Transactions, and Content](volume-1.html#actors-and-transactions)
   1. [Actor Options](volume-1.html#actor-options)
   1. [Actor Required Groupings](volume-1.html#required-groupings)
   1. [Overview](volume-1.html#overview)
   1. [Security Considerations](volume-1.html#security-considerations)
   1. [Cross Profile Considerations](volume-1.html#other-grouping)
   1. **TODO: point to the Volume 1 Appendix if there is one**
2. Volume 2: Transaction Detail
   1. [ToDo do \[domain-YY\]](domain-YY.html)
   1. **TODO: point to the Volume 2 Appendix if there is one**
3. Volume 3: Metadata and Content
   1. [Content One](domain-ZZ.html)
4. Volume 4: National Extensions
   1. **TODO: point at the National Extensions if there are any**
5. Other
   1. [Test Plan](testplan.html)
   1. [Changes to Other IHE Specifications](other.html)
   1. [Download and Analysis](download.html)

See also the [Table of Contents](toc.html) and the index of [Artifacts](artifacts.html) defined as part of this implementation guide.

### Conformance Expectations

IHE uses the normative words: Shall, Should, and May according to [standards conventions](https://profiles.ihe.net/GeneralIntro/ch-E.html).

#### Must Support

The use of ```mustSupport``` in StructureDefinition profiles equivalent to the IHE use of **R2** as defined in [Appendix Z](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.10-profiling-conventions-for-constraints-on-fhir).

mustSupport of true - only has a meaning on items that are minimal cardinality of zero (0), and applies only to the source actor populating the data. The source actor shall populate the elements marked with MustSupport, if the concept is supported by the actor, a value exists, and security and consent rules permit.
The consuming actors should handle these elements being populated or being absent/empty.
Note that sometimes mustSupport will appear on elements with a minimal cardinality greater than zero (0), this is due to inheritance from a less constrained profile.
