Profile: IHEBundleDocumentBFDR
Parent: Bundle
Id: Bundle-document-bfdr-ihe
Title: "Bundle - Document Birth and Fetal Death"
Description: "This Bundle profile represents a Birth and Fetal Death Document Bundle. It contains any one of the Birth and Fetal Death Compositions."

* identifier 1.. MS
* identifier ^short = "BFDR Document Bundle identifier"
* type = #document (exactly)
* type MS
* entry MS
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "$this.resource"
* entry ^slicing.rules = #open
* entry contains BFDRComposition 1..1 MS
* entry[BFDRComposition] only BackboneElement
* entry[BFDRComposition].resource 1.. MS
* entry[BFDRComposition].resource only Reference(Composition-provider-live-birth-report-ihe or Composition-provider-fetal-death-report-ihe)