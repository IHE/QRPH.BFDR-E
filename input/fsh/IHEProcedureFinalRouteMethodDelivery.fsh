Alias: $2.16.840.1.114222.4.11.7118 = http://phinvads.cdc.gov/fhir/ValueSet/2.16.840.1.114222.4.11.7118

Profile: IHEProcedureFinalRouteMethodDelivery
Parent: Procedure
Id: Procedure-final-route-method-delivery-ihe
Title: "Procedure - Final Route and Method of Delivery"
Description: "This Procedure profile represents the final route and method of delivery."

* code MS
* code from $2.16.840.1.114222.4.11.7118 (example)
* code ^short = "The value set contains the list of the possible routes by which the infant or fetus may be delivered."
* code ^binding.description = "Delivery Routes (NCHS)"
* subject only Reference(Patient-mother-ihe-vr)
* subject MS
* reasonReference only Reference(Observation-labor-trial-attempted-ihe)
* reasonReference MS
* reasonReference ^short = "If cesarean, was a trial of labor attempted?"

