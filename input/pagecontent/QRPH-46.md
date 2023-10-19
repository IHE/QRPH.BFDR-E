This section corresponds to transaction [QRPH-46] of the IHE Technical Framework. Transaction [QRPH-46] is used by the Client and Server Actors. The BFDRQuery [ITI-Y] transaction is used to query and get back results.

### Scope

The BFDRQuery [QRPH-46] transaction connects a Data Consumer to a Data Responder to allow query/retrieve of birth or fetal death reporting related health information.

### Actors Roles

**Table: Actor Roles**

|Actor | Role |
|-------------------+--------------------------|
| [Data Consumer ](volume-1.html#DataConsumer )    | The Data Consumer is responsible for creating a FHIR-based request for birth or fetal death reporting related health information        and retrieving this information from the Data responder. |
| [Data Responder](volume-1.html#DataResponder)    | The Data Responder responds to the request for birth or fetal death reporting related health information or provides the appropriate response if the information does not exist. |

### Referenced Standards

**FHIR-R4** [HL7 FHIR Release 4.0](http://www.hl7.org/FHIR/R4)

### Interactions

<figure>
{%include domain-Y-seq.svg%}
<p id="f3.46.4-1" class="BFDRE Query Interaction Diagram">Figure 3.46.4-1: BFDRE Query Interaction Diagram</p>
</figure>
<br clear="all">

#### BFDRQuery Query Message

Data Consumer retrieves the birth or fetal death reporting related health information from the Data Responder.

##### Trigger Events

''Data Consumer shall trigger a FHIR-based query [QRPH-46] to the Data Responder when: 
    The birth clerk is preparing to complete the birth or fetal death reporting details for jurisdictional vital records reporting''

##### Message Semantics

''The message is a FHIR HTTP or HTTPS GET of Birth or Fetal Death Reporting Data where the parameter provided is the PatientID of the mother. While both HTTP and HTTPS are permitted,
the implementation SHOULD consider HTTPS.

As the information is retrieved from multiple resources, the URL resources for this operation are:
    - Resources relating to the mother (using the id of the mother):
        [base]/Composition/[id]
        [base]/Patient/[id]
        [base]/Condition/[id]
        [base]/Observation/[id]
        [base]/Procedure/[id]
        [base]/MedicationAdministration/[id]1175
        [base]/Encounter/[id]
        [base]/Coverage/[id]
   - Resources relating to the newborn or fetus (using the id of the newborn or fetus):
        [base]/Patient/[id]
        [base]/MedicationAdministration/[id]
        [base]/Procedure/[id]
        [base]/Observation/[id]
        [base]/Condition/[id]
        [base]/Encounter/[id]
''

##### Expected Actions

''The Data Consumer initiates the retrieve request for the resources specified in QRPH TF-3:6.6.5.2 FHIR Resource Data Specifications using HTTP or HTTPS GET, and the Data Responder responds using the resources specified in QRPH TF-3: 6.6.5.2 FHIR Resource Data Specifications according to the FHIR GET specification with the requested birth or fetal death reporting related health information Birth or Fetal Death Reporting information or an error message. See: http://hl7.org/fhir/http.html#read.''

### Security Considerations

This transaction includes identifiable health information, and depending upon the implementation and application, may constitute a disclosure of health information that require audit, encryption, and authentication of the Data Consumer and Data responder. For further guidance, see [ITI TF-2: Appendix Z](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html).

#### Security Audit Considerations BFDRQuery [QRPH-46] (ADT)

''The BFDRQuery [QRPH-46] (FHIR GET) messages are audited as “PHI Export” events, as defined in ITI TF-2: Table 3.20.4.1.1.1-1. The following tables show items that are required to be part of the audit record for these specific BFDRQuery transactions.''

#####  Data Responder Actor audit message

''TODO: the specifics''

##### Data Consumer Actor audit message

''TODO: the specifics''

##### Form Receiver Message Exporter Actor audit message

''TODO: the specifics''

#####  Form Processor Message Exporter Actor audit message

''TODO: the specifics''