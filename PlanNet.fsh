Alias: SCT = http://snomed.info/sct

Profile:        Plannet-Endpoint
Parent:         Endpoint
Id:             plannet-endpoint
Title:          "Plan-net Endpoint"
Description:    "An endpoint..."

Profile:        Plannet-HealthcareService
Parent:         HealthcareService
Id:             plannet-healthcareService
Title:          "Plan-net HealthcareService"
Description:    "A healthcareService..."

Profile:        Plannet-Location
Parent:         Location
Id:             plannet-location
Title:          "Plan-net Location"
Description:    "A Location... "

Profile:        Plannet-Organization
Parent:         USCoreOrganization
Id:             plannet-organization
Title:          "Plan-net Organization"
Description:    "An organization is a formal or informal grouping of people or organizations with a common purpose, such as a company, institution, corporation, community group, or healthcare practice.
Guidance:   When the contact is a department name, rather than a human (e.g., patient help line), include a blank family and given name, and provide the department name in contact.nae.text"
* extension contains
   qualification 0..* MS and
   org-description 0..1 MS
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
* partOf MS  
* partOf only Reference(Plannet-Organization)
* address MS
* address.extension contains geolocation 0..* MS
* address.use MS
* address.type MS
* address.text MS
* address.line MS 
* address.city MS
* address.state MS
* address.postalCode MS
* address.country MS
* address.period MS
* contact MS
* contact.telecom MS
* contact.telecom.extension contains
       contactpoint-availabletime 0..* MS and
       via-intermediary 0..* MS
* contact.telecom.value MS
* contact.telecom.system MS
* contact.telecom.use MS
* telecom MS
* telecom.extension contains
       contactpoint-availabletime 0..* MS and
       via-intermediary 0..* MS
* telecom.system MS
* telecom.value MS
* telecom.rank MS
* telecom.use MS
* telecom.period MS
* endpoint MS

Profile:        Plannet-Practitioner
Parent:         USCorePractitioner
Id:             plannet-practitioner
Title:          "Plan-net Practitioner"
Description:    "Practitioner is a person who is directly or indirectly involved in the provisioning of healthcare."
* extension contains
   accessibility 0..1 MS and
   communication-proficiency 0..* MS
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
* name.use MS
* name.text MS
* name.family MS
* name.given MS
* name.prefix MS
* name.suffix MS
* name.period MS
* address MS
* address.extension contains geolocation 0..* MS
* address.use MS
* address.type MS
* address.text MS
* address.line MS 
* address.city MS
* address.state MS
* address.postalCode MS
* address.country MS
* address.period MS
* telecom MS
* telecom.extension contains
    contactpoint-availabletime 0..* MS and
    via-intermediary 0..* MS
* telecom.system MS
* telecom.value MS
* telecom.rank MS
* telecom.use MS
* telecom.period MS
* gender MS
* birthDate MS 
* photo MS
* qualification MS
* qualification.extension contains 
    practitioner-qualification 0..* MS
* qualification.identifier MS
* qualification.identifier.use MS
* qualification.identifier.type MS
* qualification.identifier.system MS
* qualification.identifier.value MS
* qualification.identifier.period MS
* qualification.identifier.assigner MS
* qualification.code MS
* qualification.period MS
* qualification.issuer MS
* communication MS



Profile:        Plannet-PractitionerRole
Parent:         USCorePractitionerRole
Id:             plannet-practitioner
Title:          "Plan-net Practitioner"
Description:    "Practitioner is a person who is directly or indirectly involved in the provisioning of healthcare."
* extension contains
   newpatients 0..* MS and
   newpatientprofile 0..* MS and
   network-reference 0..* MS and
   qualification 0..* MS
* identifier.extension contains identifier-status  1..* MS
* identifier.id MS
* identifier.use MS
* identifier.system MS
* identifier.type MS
* identifier.value MS
* identifier.period MS
* identifier.assigner MS
* active 1..1 MS
* period MS 
* practitioner only Reference(Plannet-Practitioner)
* organization only Reference(Plannet-Organization) 
* practitioner 1..1  MS
* organization 1..1  MS 
* code 1..1 MS
* location only Reference(Plannet-Location) 
* location MS 
* healthcareService only Reference(Plannet-HealthcareService)
* telecom MS
* telecom.extension contains
    contactpoint-availabletime 0..* MS and
    via-intermediary 0..* MS
* telecom.system MS
* telecom.value MS
* telecom.rank MS
* telecom.use MS
* telecom.period MS
* availableTime MS
* availableTime.daysOfWeek MS
* availableTime.allDay MS
* availableTime.availableStartTime MS
* availableTime.availableEndTime MS
* notAvailable MS
* notAvailable.description MS
* notAvailable.during MS
* endpoint only Reference(Plannet-Endpoint) 
* endpoint 0..* MS 

Profile:        Plannet-PractitionerRole-R4
Parent:         PractitionerRole
Id:             plannet-practitioner
Title:          "Plan-net Practitioner"
Description:    "Practitioner is a person who is directly or indirectly involved in the provisioning of healthcare."
* extension contains
   newpatients 0..* MS and
   newpatientprofile 0..* MS and
   network-reference 0..* MS and
   qualification 0..* MS
* identifier.extension contains identifier-status  1..* MS
* identifier.id MS
* identifier.use MS
* identifier.system MS
* identifier.type MS
* identifier.value MS
* identifier.period MS
* identifier.assigner MS
* active 1..1 MS
* period MS 
* practitioner only Reference(Plannet-Practitioner)   // 1..1 from USCore
* organization only Reference(Plannet-Organization)         // 1..1 from USCore
* practitioner 0..1  MS   // 1..1 from USCore
* organization 1..1   MS        // 1..1 from USCore
* code  from  us-core-provider-role-vs (required) 
* code 1..1  MS
* specialty from  us-core-provider-specialty-vs (required)
* specialty 0..1 MS
* location only Reference(Plannet-Location)
* location MS
* healthcareService only Reference(Plannet-HealthcareService)
* telecom MS
* telecom.extension contains
    contactpoint-availabletime 0..* MS and
    via-intermediary 0..* MS
* telecom.system 1..1 MS
* telecom.value 1..1 MS
* telecom.rank MS
* telecom.use MS
* telecom.period MS
* availableTime MS
* availableTime.daysOfWeek MS
* availableTime.allDay MS
* availableTime.availableStartTime MS
* availableTime.availableEndTime MS
* notAvailable MS
* notAvailable.description MS
* notAvailable.during MS
* endpoint only Reference(Plannet-Endpoint) 
* endpoint 0..* MS


Extension: ViaIntermediary
Id: via-intermediary
Title: "Via Intermediary"
Description: "Via Intermediary"
* value[x] only Reference
* valueReference MS
* valueReference only Reference(Plannet-Organization) // , Plannet-PractitionerRole, Plannet-OrganizationAffiliation, Plannet-Location)


