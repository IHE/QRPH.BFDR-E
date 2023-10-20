Alias: $PreDirectional = http://hl7.org/fhir/us/vrdr/StructureDefinition/PreDirectional
Alias: $StreetNumber = http://hl7.org/fhir/us/vrdr/StructureDefinition/StreetNumber
Alias: $StreetName = http://hl7.org/fhir/us/vrdr/StructureDefinition/StreetName
Alias: $StreetDesignator = http://hl7.org/fhir/us/vrdr/StructureDefinition/StreetDesignator
Alias: $PostDirectional = http://hl7.org/fhir/us/vrdr/StructureDefinition/PostDirectional
Alias: $UnitOrAptNumber = http://hl7.org/fhir/us/vrdr/StructureDefinition/UnitOrAptNumber
Alias: $CityCode = http://hl7.org/fhir/us/vrdr/StructureDefinition/CityCode
Alias: $DistrictCode = http://hl7.org/fhir/us/vrdr/StructureDefinition/DistrictCode
Alias: $vrdr-states-territories-provinces-vs = http://hl7.org/fhir/us/vrdr/ValueSet/vrdr-states-territories-provinces-vs
Alias: $vrdr-residence-country-vs = http://hl7.org/fhir/us/vrdr/ValueSet/vrdr-residence-country-vs

Profile: IHECertifierVr
Parent: Practitioner
Id: Vrdr-ihe-certifier
Title: "Certifier"
Description: "Certifier"

* name ..1
* name ^short = "name"
* address ^short = "address"
* address.extension contains
    $PreDirectional named predir 0..1 and
    $StreetNumber named stnum 0..1 and
    $StreetName named stname 0..1 and
    $StreetDesignator named stdesig 0..1 and
    $PostDirectional named postdir 0..1 and
    $UnitOrAptNumber named unitnumber 0..1
* address.city ^short = "city"
* address.city.extension contains $CityCode named cityCode 0..1
* address.city.extension[cityCode] ^label = "City Code"
* address.city.extension[cityCode] ^short = "City Code"
* address.city.extension[cityCode] ^definition = "Numeric code from in accordance with the NCHS Instruction Manual Part 8, Vital Records Geographic Classification, 2014 (https://www.cdc.gov/nchs/data/dvs/IMP8_2014.pdf) and https://ftp.cdc.gov/pub/health_Statistics/nchs/Manuals/Mortality/PLACE_CODES.txt."
* address.district ^short = "county"
* address.district.extension contains $DistrictCode named districtCode 0..1
* address.district.extension[districtCode] ^label = "County code"
* address.district.extension[districtCode] ^short = "County code"
* address.district.extension[districtCode] ^definition = "Numeric code in accordance with the NCHS Instruction Manual Part 8, Vital Records Geographic Classification, 2014 (https://www.cdc.gov/nchs/data/dvs/IMP8_2014.pdf) and https://ftp.cdc.gov/pub/health_Statistics/nchs/Manuals/Mortality/PLACE_CODES.txt."
* address.state from $vrdr-states-territories-provinces-vs (example)
* address.postalCode ^short = "zip"
* address.country from $vrdr-residence-country-vs (example)

Mapping: v2
Id: v2
Title: "HL7 v2 Mapping"
Source: IHECertifierVr
Target: "http://hl7.org/v2"

Mapping: rim
Id: rim
Title: "RIM Mapping"
Source: IHECertifierVr
Target: "http://hl7.org/v3"

Mapping: servd
Id: servd
Title: "ServD"
Source: IHECertifierVr
Target: "http://www.omg.org/spec/ServD/1.0/"

Mapping: w5
Id: w5
Title: "FiveWs Pattern Mapping"
Source: IHECertifierVr
Target: "http://hl7.org/fhir/fivews"