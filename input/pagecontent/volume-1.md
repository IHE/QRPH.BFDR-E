
# 1:XX Profile name

**TODO: Provide an end-user friendly overview of what the profile does for them. Keep it brief (a paragraph or two, up to a page). If extensive detail is needed, it should be included in Section XX.4- Use Cases.**

**TODO: Explicitly state whether this is a Workflow, Transport, or Content Module (or combination) profile. See the IHE Technical Frameworks General Introduction for definitions of these profile types. The IHE Technical Frameworks [General Introduction](https://profiles.ihe.net/GeneralIntro/). **

<a name="actors-and-transactions"> </a>

## 1:X.1 ToDo Actors, Transactions, and Content Modules

* Actors
  * [Content Creator](#ContentCreator)
  * [Content Consumer](#ContentConsumer)
  * [Data Consumer](#DataConsumer)
  * [Data Responder](#DataResponder)
  * [Form Receiver Document Exporter](#FormReceiverDocumentExporter)
  * [Form Processor Document Exporter](#FormProcessorDocumentExporter)
  * [Form Receiver Message Exporter](#FormReceiverMessageExporter)
  * [Form Processor Message Exporter](#FormProcessorMessageExporter)
* Transactions
  * [BFDRQuery](QRPH-46.html)
  * [Retrieve Form](ITI-34.html)
  * [Submit Form](ITI-35.html)
  * [Archive Form](ITI-36.html)
  * [Mobile Retrieve form (Request)](QRPH-48.html)
  * [Mobile Authorize Form](QRPH-50.html)
  * [Mobile Populate Form (Request)](QRPH-52.html)
  * [Mobile Retrieve Access Token (Request)](QRPH-51.html)
  * [Mobile Retrieve Capability (Request)](QRPH-49.html)
  * [BFDRFeed](QRPH-37.html)


Actors and transactions are used to achieve this use-case...

<figure>
{%include usecase1-processflow.svg%}
<p id="fX.X.X.X-X" class="figureTitle">Figure X.X.X.X-X: Use Case 1 Process Flow</p>
</figure>
<br clear="all">

This section defines the actors and transactions in this implementation guide.

Figure below shows the actors directly involved in the Birth and Fetal Death Reporting-Enhanced Profile and the relevant transactions between them.

<figure>
{%include ActorsAndTransactions.svg%}
<figcaption><b>Figure XX.1-2: ToDo Actor Diagram</b></figcaption>
</figure>
<br clear="all">

<p id ="tXX.1-1" class="tableTitle">Table XX.1-1: BFDR-E Profile - Actors and Transactions</p>

|         |               |                        |                 |                                   |
|---------|---------------|------------------------|-----------------|-----------------------------------|
| Actors  | Transactions  | Initiator or Responder | Optionality     | Reference                         |
| Actor A | Transaction 1 |                        | R               | Domain Acronym TF-2: 3.Y1 |
|         | Transaction 2 |                        | R               | Domain Acronym TF-2: 3.Y2 |
| Actor F | Transaction 1 |                        | R               | Domain Acronym TF-2: 3.Y1 |
|         | Transaction 2 |                        | R               | Domain Acronym TF-2: 3.Y2 |
| Actor D | Transaction 1 |                        | R               | Domain Acronym TF-2: 3.Y1 |
| Actor E | Transaction 2 |                        | R               | Domain Acronym TF-2: 3.Y2 |
|         | Transaction 3 |                        | O ( See Note 1) | Domain Acronym TF-2: 3.Y3 |
|         | Transaction 4 |                        | O ( See Note 1) | Domain Acronym TF-2: 3.Y4 |
| Actor B | Transaction 3 |                        | R               | Domain Acronym TF-2: 3.Y3 |
|         | Transaction 4 |                        | O ( See Note 2) | Domain Acronym TF-2: 3.Y4 |
{: .grid}

Note 1: *For example, a note could specify that at least one of the
transactions shall be supported by an actor or other variations. For
example: Note: Either Transaction Y3 or Transaction Y4 shall be
implemented for Actor E.*

Note 2: *For example, could specify that Transaction Y4 is required
if Actor B supports XYZ Option, see Section XX.3.X.*

### XX.1.1 Actors
The actors in this profile are described in more detail in the sections below.

<a name="ContentCreator"> </a>

#### XX.1.1.1 Content Creator

The Content Creator SHALL be able to create both a valid BFDR Provider Live Birth Composition Bundle and a valid BFDR Provider Fetal Death Composition Bundle.

Detailed rules for the BFDR Provider Live Birth Composition Bundle are fully defined in [TODO](TODO), and detailed rules for the BFDR Provider Fetal Death Composition Bundle are fully
defined in [TODO](TODO)

<a name="ContentConsumer"> </a>

#### XX.1.1.2 Content Consumer

The Content Consumer SHALL consume both a valid BFDR Provider Live Birth Composition Bundle and a valid BFDR Provider Fetal Death Composition Bundle Detailed rules for the BFDR Provider Live Birth Composition Bundle are fully defined in [TODO](TODO), and detailed rules for the BFDR Provider Fetal Death Composition Bundle are fully defined in [TODO](TODO)

The Content Consumer SHALL implement the Discrete Data Import Option when consuming a QRPH IHE BFDR Provider Live Birth Document or IHE BFDR Provider Fetal Death Document.

#### XX.1.1.3 Form Filler

TBD



#### XX.1.1.4 Form Manager

TBD

#### XX.1.1.5 Form Receiver

TBD

#### XX.1.1.6 Form Processor

TBD

#### XX.1.1.7 Form Receiver Document Exporter

TBD

#### XX.1.1.8 Form Processor Document Exporter

TBD

#### XX.1.1.9 Form Receiver Message Exporter

TBD

#### XX.1.1.10 Form Processor Message Exporter

TBD

#### XX.1.1.11 Form Archiver

TBD

#### XX.1.1.12 Data Consumer

TBD

#### XX.1.1.13 Data Responder

TBD



### Transaction Descriptions

The transactions in this profile are summarized in the sections below.

#### ToDo do transaction

This transaction is used to **do things**

For more details see the detailed [transaction description](domain-YY.html)

<a name="actor-options"> </a>

## XX.2 ToDo Actor Options

Options that may be selected for each actor in this implementation guide, are listed in Table 3.2-1 below. Dependencies
between options when applicable are specified in notes.

<p id ="tXX.1-1" class="tableTitle">Table XX.1-1: Actor Options</p>

|                                  |             |
|----------------------------------|-------------|
| Actor                            | Option Name |
| Content Creator                  | Antepartum Import  |
| Content Consumer                 | View |
|                                  | Document Import |
|                                  | Discrete Data Import |
| Form Filler                      | LDS Pre-Pop[Note 1](#Note1) |
|                                  | LDS-VR Pre-Pop[Note 2](#Note2) |
|                                  | Archive Form |
| Form Manager                     | none |
| Form Processor                   | none |
| Form Receiver                    | none |
| Form Receiver Document Exporter  | none |
| Form Processor Document Exporter | none |
| Form Receiver Message Exporter   | Provider Supplied Live Birth Reporting Option [Note 2](#Note2) |
|                                  | Provider Supplied Mother’s Live Birth Information Option [Note 2](#Note2) |
|                                  | Provider Supplied Facility’s Live Birth Information Option [Note 2](#Note2) |
|                                  | Provider Supplied Fetal Death Reporting Option |
|                                  | Fetal Death Facility's Information Option |
|                                  | Fetal Death Mother's Information Option |
|                                  | Jurisdiction Live Birth Reporting Option |
|                                  | Jurisdiction Fetal Death Reporting Option |
| Form Processor Message Exporter  | Provider Supplied Live Birth Reporting Option [Note 2](#Note2) |
|                                  | Provider Supplied Mother’s Live Birth Information Option [Note 2](#Note2) |
|                                  | Provider Supplied Facility’s Live Birth Information Option [Note 2](#Note2) |
|                                  | Provider Supplied Fetal Death Reporting Option |
|                                  | Fetal Death Facility's Information Option |
|                                  | Fetal Death Mother's Information Option |
|                                  | Jurisdiction Live Birth Reporting Option |
|                                  | Jurisdiction Fetal Death Reporting Option |
| Form Archiver                    | none |
| Data Consumer                    | none |
| Data Responder                   | none |
{: .grid}

<a name="Note1"> </a>
Note 1: At least one of these options SHALL be supported.

<a name="Note2"> </a>
Note 2: At least one of these birth reporting options SHALL be supported

### XX.2.1 LDS Pre-Pop Option

**TODO: describe this option and the Volume 1 requirements for this option

### XX.2.2 LDS-VR Pre-Pop Option

**TODO: describe this option and the Volume 1 requirements for this option

### XX.2.3 Archive Form Option

**TODO: describe this option and the Volume 1 requirements for this option

### XX.2.4 Antepartum Import Option

**TODO: describe this option and the Volume 1 requirements for this option

### XX.2.5 Provider Supplied Live Birth Reporting Option

**TODO: describe this option and the Volume 1 requirements for this option

### XX.2.6 Provider Supplied Mother's Live Birth Information Option

**TODO: describe this option and the Volume 1 requirements for this option

### XX.2.7 Provider Supplied Facility’s Live Birth Information Option

**TODO: describe this option and the Volume 1 requirements for this option

### XX.2.8 Provider Supplied Fetal Death Reporting Option

**TODO: describe this option and the Volume 1 requirements for this option

### XX.2.9 Fetal Death Facility's Information Option

**TODO: describe this option and the Volume 1 requirements for this option

### XX.2.10 Fetal Death Mother's Information Option

**TODO: describe this option and the Volume 1 requirements for this option

### XX.2.11 Jurisdiction Live Birth Reporting Option

**TODO: describe this option and the Volume 1 requirements for this option

### XX.2.12 Jurisdiction Fetal Death Reporting Option

**TODO: describe this option and the Volume 1 requirements for this option

### XX.2.13 Void Certificate Reporting Option

**TODO: describe this option and the Volume 1 requirements for this option

### XX.2.14 Coded Cause of Death Reporting Option

**TODO: describe this option and the Volume 1 requirements for this option

### XX.2.15 Coded Race/Ethnicity Reporting Option

**TODO: describe this option and the Volume 1 requirements for this option

<a name="required-groupings"> </a>

## XX.3 BFDR-E Required Actor Groupings

TBD - Actor grouping of Content Creator with Antepartum Import Option to be groped with PCC APS Content Consumer with Discrete Data Import Option content binding reference [TODO](TODO)

Note 1: A Content Creator supporting the Antepartum Import Option SHALL be grouped with the APS Content Consumer780 with the Discrete Data Import Option for those attributes specified by the Antepartum Import Option; see QRPH TF-1:X.2.4.

<p id ="tXX.3-1" class="tableTitle">Table XX.3-1: Actor Groupings</p>


<a name="overview"> </a>

## XX.4 BFDR-E Overview

Vital Records birth certificates and fetal death reports include important demographic, medical and key information about the antepartum period, the labor and delivery process and the
newborn/fetal death. Much of the medical and health information collected for the birth certificate and fetal death report can be pre-populated with information already available in the
Electronic Health Record (EMR). A responsible Health Care Provider (HCP) or designated representative must review and complete the information to ensure data quality for vital registration purposes. These data may then be used by public health agencies to track maternal and infant health to target interventions for at risk populations.

The national statistics agencies have a long and enduring history that serves to provide essential data on births and deaths. Within the United States, for instance, this is the oldest and most successful example of inter-governmental data sharing in Public Health. Currently, these data typically are gathered by hospital personnel from the hospital’s medical records using paper worksheets. The process of capturing Vital Records information manually is duplicative, labor-intensive, costly, and can be error prone. As a result, the timeliness and quality of these data are adversely affected.

### XX.4.1 Concepts

Some jurisdictions have established detailed specifications for collecting and reporting the items on the Certificate of Live Birth and the Report of Fetal Death. It is critical that all vital registration areas follow these standards to promote uniformity in data collection across registration areas. 

Additionally, standard worksheets are used to enhance the collection of quality, reliable data. Forms for the “mother’s live birth information for Child’s Birth Certificate” have been
established by some jurisdictions to identify information to be collected directly from the mother. The “Facility Worksheet for the Live Birth Certificate” identifies information for which the best sources are the mother’s and infant’s medical records. The use of separate worksheets promotes standardized collection. The "Patient's Worksheet for the Report of Fetal Death" and the "Facility Worksheet for the Report of Fetal Death" have also been established for the purpose of reporting fetal death information.

The hospital is responsible for completing the Record of Live Birth in the jurisdiction's Electronic Birth Registration System (EBRS). Information collected from the mother on the mother’s live birth information must be data entered into the EBRS. Facility Worksheet data transmitted electronically into the EBRS from the EMR must be reviewed for completeness and accuracy. The birth records specialist plays an essential role in gathering the information and ensuring that all information is complete before transmission to the vital registration system at the states/jurisdictional vital record offices. Select birth data may be transmitted later to public health authorities as allowed by individual state statute and other vital records stakeholders.

Example Forms:
    *Facility Worksheet (https://www.cdc.gov/nchs/data/dvs/facility-worksheet-2016.pdf)
    * U.S. Standard Certificate of Live Birth (http://www.cdc.gov/nchs/data/dvs/birth11-03final-ACC.pdf)
    * https:/www.cdc.gov/nchs/data/dvs/FDEATH11-03finalACC.pdf825
    * Mother’s Worksheet for Child’s Birth Certificate
    * Patient’s worksheet for the report of fetal death

### XX.4.2 Use Cases

#### XX.4.2.1 Use Case #1: Forms Data Capture with Messaging

The Forms Data Capture with Messaging use case uses Retrieve Form for Data Capture (RFD) to present Facilities Worksheet for pre-population, and the Form Receiver system transforms the
information into a BFDRFeed [QRPH-37] message to transmit the information to Public Health EBRS.

##### XX.4.2.1.1 Forms Data Capture with Messaging Use Case Description

When the delivery has been documented in the system, a Labor and Delivery Summary document (LDS, LDS-VR) is created with Vital Record Birth and Fetal Death Reporting Content requirements. This summary document is provided as pre-population data to a public health IHE ITI Retrieve Form for Data Capture (RFD) Form Manager. The RFD Form Receiver provides the content to the EBRS by way of a transform to the corresponding BFDRFeed [QRPH-37] message.

##### XX.4.2.1.2 Forms Data Capture with Messaging Process Flow

The process flow of this use case is defined by ITI RFD. Please refer to ITI TF-1: 17 for a description of the process flow for RFD. The Form Filler may be implemented by the birthing
facility or by the child’s clinician in instances of home birth etc. The process flow for the BFDR-E is described below.

The provider EMR presents the Facilities Worksheet providing an LDS or LDS-VR document for Pre-population by the Form Manager. The birth information specialist completes the form, verifies the accuracy of all information, and submits the form. The birth information specialist may also interview the mother for completion of the mother’s information to complete the reporting for the birth or fetal death. The Form Receiver Message Exporter transforms the information from the form into an HL7 BFDRFeed [QRPH-37] message and transmits that message to the EBRS system using the BFDRFeed [QRPH-37] transaction using the provider to jurisdiction reporting options for Report Jurisdiction Fetal Death. The National Statistics Agency returns coded cause of fetal death and Coded Race / Ethnicity Option for the fetal death to the jurisdiction EBRS. Due to paper jam damage of the printed official certificate that bears the death report number, the jurisdictional vital records office sends a Void Certificate Reporting message to the national statistics agency to void the submission. The fetal death registration will subsequently be transmitted with a new fetal death report number using the same transaction series between the originating jurisdictional vital records office and the National Statistics Agency.

**TODO**Modify the following “Swimlane Diagram”.

<figure>
{%include usecase1-processflow.svg%}
<figcaption><b>Figure XX.4.2.2-1: Basic Process Flow in Profile Acronym Profile</b></figcaption>
</figure>
<br clear="all">

**Pre-conditions**:

A delivery has been documented in the EMR system.

**Main Flow**:

This flow captures the EBRS information using forms provided by public health and transmits the data that is captured to public health using HL7 Messaging (BFDRFeed [QRPH-37]).

**Post-conditions:**

The EBRS has received the data.

<a name="security-considerations"> </a>

## XX.5 BFDR-E Security Considerations
BFDR-E includes clinical content related to the information subject. As such, it is anticipated that the transfers of Personal Health Information (PHI) will be protected. The IHE ITI Audit Trail and Node Authentication (ATNA) Profile SHOULD be implemented by all of the actors involved in the IHE transactions specified in this profile to protect node-to-node communication
and to produce an audit trail of the PHI related actions when they exchange messages, though other private security mechanisms MAY be used to secure content within enterprise managed
systems. Details regarding ATNA logging will be further described in Volume 2. 

The content of the form also results in a legal document, and the Form Manager MAY include a digital signature using ITI Document Digital Signature (DSG) Profile to assure that the form
content submitted cannot be changed.

For security purposes, when sending information specifically to vital records Electronic Registration Systems, systems will also need to know the identity of the user and the location to
identify the data source. In this case, the Cross-Enterprise User Assertion (XUA) Profile MAY be utilized to support this implementation.

See ITI TF-2x: [Appendix Z.8 “Mobile Security Considerations”](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.8-mobile-security-considerations)


<a name="other-grouping"> </a>

## XX.6 BFDR-E Cross-Profile Considerations

The following informative narrative is offered as implementation guidance.

### XX.6.1 mRFD – Mobile Retrieve Form for Data Capture

The BFDRQuery[QRPH-46] transaction may be used with Mobile Retrieve form for Data Capture as an alternative for form pre-population. To accomplish this, the Data Consumer should be grouped with the Form Manager of mRFD, and the Data Responder should be grouped with the Form Filler of mRFD.

### XX.6.2 XD*– Cross Enterprise Document Sharing.b, Cross Enterprise Document Media Interchange, or Cross Enterprise Document Reliable Interchange

The use of the IHE XD* family of transactions is encouraged to support standards-based interoperability between systems acting as Content Creator and Content Consumer. The grouping of Content Creator and Content Consumer Actors with ITI XD* Actors is defined in the PCC Technical Framework (PCC TF-1:3.7.1). Below is a summary of recommended IHE transport transactions that MAY be utilized by systems playing the roles of Content Creator or Content Consumer to support the use cases defined in this profile:
    * A Document Source in XDS.b, a Portable Media Creator in XDM, or a Document Source in XDR might be grouped with the BFDR-E Content Creator. A Document Consumer in XDS.b, a Portable Media Importer in XDM, or a Document Recipient in XDR might be grouped with the BFDR-E Content Consumer. A registry/repository-based infrastructure is defined by the IHE Cross Enterprise Document Sharing (XDS.b) that includes profile support that can be leveraged to facilitate retrieval of public health related information from a document sharing infrastructure: Multi-Patient Query (MPQ), Document Metadata Subscription (DSUB).
    * A media-based infrastructure is defined by the IHE Cross Enterprise Document Media Interchange (XDM) Profile. A Portable Media Creator in XDM might be grouped with the BFDR-E Content Creator. A Portable Media Importer in XDM might be grouped with the BFDR-E Content Consumer.
    * A reliable messaging-based infrastructure is defined by the IHE Cross Enterprise Document Reliable Interchange (XDR) Profile. A Document Source in XDR might be grouped with the BFDR-E Content Creator. A Document Recipient in XDR might be grouped with the BFDR-E Content Consumer.

### XX.6.3 Sharing Value Sets (SVS)

Actors in the BFDR-E Profile may support the Sharing Value Sets (SVS) Profile in order to use a common uniform managed vocabulary for dynamic management of form mapping rules.

## XX.7 BFDR-E Data Elements

This profile defines specific data element content. These data elements are used to create the BFDR Provider Live Birth Report FHIR Document or the BFDR Provider Fetal Death Report FHIR Document, generate the HL7 BFDRFeed [QRPH-37] message, or populate a form defined to gather the required structured data, such as the US BFDR Form. That set of data elements in the form are identified and defined in Appendix B.