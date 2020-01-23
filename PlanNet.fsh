Alias: SCT = http://snomed.info/sct

Profile:        Plannet-Organization
Parent:         USCoreOrganization
Id:             plannet-organization
Title:          "Plan-net Organization"
Description:    "An organization is a formal or informal grouping of people or organizations with a common purpose, such as a company, institution, corporation, community group, or healthcare practice.

Guidance:   When the contact is a department name, rather than a human (e.g., patient help line), include a blank family and given name, and provide the department name in contact.nae.text"
* extension contains
   qualification 0..* MS and
   org-description 0..1 MS
* telecom.extension contains available-time  0..* MS
* contact.telecom.extension contains available-time  0..* MS
* identifier.extension contains identifier-status  1..* MS 
* identifier.id MS
* identifier.use MS
* identifier.system MS
* identifier.type MS
* identifier.value MS
* identifier.period MS
* identifier.assigner MS
* active MS
* name MS
* alias MS
* partOf MS    // must reference Plannet-Organization 
* partOf only Reference(Plannet-Organization)
* address.extension contains geolocation 0..* MS
* address MS
* address.use MS
* address.city MS
* address.state MS
* address.postalCode MS
* address.country MS
* address.period MS
* contact MS 
* contact.telecom MS
* contact.telecom.extension contains
       available-time 0..* MS and
       via-intermediary 0..* MS 
* contact.telecom.value MS 
* contact.telecom.system MS
* contact.telecom.use MS
* telecom MS
* telecom.extension contains
       available-time 0..* MS and
       via-intermediary 0..* MS 
* telecom.system MS
* telecom.value MS
* endpoint MS

/*
  OrganizationTelecom.ContactPoint MS 
  OrganizationTelecom.ContactPoint.TelecomNumberOrAddress MS
  OrganizationTelecom.ContactPoint.Type MS 
  OrganizationContact MS
  OrganizationContact.HumanName MS
  OrganizationContact MS
  OrganizationContact.ContactPoint.TelecomNumberOrAddress MS
  OrganizationContact.ContactPoint.Type MS 
  OrganizationContact.ContactPoint.Purpose MS
  OrganizationContact.ContactPoint.PriorityRank MS
  OrganizationContact.ContactPoint.EffectiveTimePeriod MS
  TViaIntermediary MS
  ViaIntermediary MS
    TAvailableTime MS
  CAvailableTime MS
  Qualification MS
  Description MS
  OrganizationEndpoint MS 
*/

Extension:  qualification 
Id: VhDirQualification
Title: "Qualification from VhDir"
Description: "Stuff about Qualification."

Extension:  org-description 
Id: VhDirOrgDescription
Title: "org-description"
Description: "Stuff about Qualification."

Extension:  available-time 
Id: VhDirAvailableTime
Title: "available-time"
Description: "Stuff about Qualification."

Extension:  identifer-status  
Id: VhDirIdentifierStatus
Title: "Identifier Status"
Description: "Stuff about Qualification."

Extension: geolocation
Id: http://hl7.org/fhir/StructureDefinition/geolocation
Title: "geolocation"
Description:  "Gelocation"

Extension: via-intermediary
Id: via-intermediary 
Title: "Via Intermediary"
Description: "Via Intermediary"
* value[x] only Reference MS 
* valueReference only Reference(Plannet-Organization)
