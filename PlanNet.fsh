Alias: $SCT = http://snomed.info/sct
Alias: $ContactPointAvailableTimeExtension = http://hl7.org/fhir/uv/vhdir/StructureDefinition/contactpoint-availabletime
Alias: $IdentifierStatusExtension = http://hl7.org/fhir/uv/vhdir/StructureDefinition/identifier-status
Alias: $AccessibilityExtension = http://hl7.org/fhir/uv/vhdir/StructureDefinition/accessibility
Alias: $NewPatientProfileExtension = http://hl7.org/fhir/uv/vhdir/StructureDefinition/newpatientprofile
Alias: $OrgDescriptionExtension = http://hl7.org/fhir/uv/vhdir/StructureDefinition/org-description
Alias: $CommunicationProficiencyExtension = http://hl7.org/fhir/uv/vhdir/StructureDefinition/communication-proficiency
Alias: $GeolocationExtension = http://hl7.org/fhir/StructureDefinition/geolocation
Alias: $PractitionerQualificationExtension = http://hl7.org/fhir/uv/vhdir/StructureDefinition/practitioner-qualification
Alias: $QualificationExtension = http://hl7.org/fhir/uv/vhdir/StructureDefinition/qualification

Profile:        PlannetEndpoint
Parent:         Endpoint
Id:             plannet-endpoint 
Title:          "Plan-net Endpoint"
Description:    "An endpoint..."
* identifier.extension contains 
    EndpointUsecase named endpoint-usecase 0..*
* identifier.id MS
* identifier.use MS
* identifier.system MS
* identifier.type MS
* identifier.value MS
* identifier.period MS
* identifier.assigner MS
* status MS
* connectionType MS
* name MS
* managingOrganization only Reference(PlannetOrganization)
* managingOrganization MS
* contact MS
*  contact.extension contains
       $ContactPointAvailableTimeExtension named contactpoint-availabletime 0..* MS and
       ViaIntermediary named via-intermediary 0..* MS
* contact.value MS
* contact.system MS
* contact.use MS
* contact.rank MS
* contact.period MS
* period MS
* payloadType MS
* payloadMimeType MS
* address MS
* header MS

   


Profile:        PlannetHealthcareService
Parent:         HealthcareService
Id:             plannet-healthcareService
Title:          "Plan-net HealthcareService"
Description:    "A healthcareService..."
* extension contains
    NewPatients named newpatients 1..1 MS
* identifier.extension contains $IdentifierStatusExtension named identifier-status  1..* MS
* identifier.id MS
* identifier.use MS
* identifier.system MS
* identifier.type MS
* identifier.value MS
* identifier.period MS
* identifier.assigner MS
* active MS
* providedBy only Reference(PlannetOrganization)
* providedBy MS
* category MS
* type MS
* specialty MS
* location only Reference(PlannetLocation)
* location MS
* name MS
* comment MS
* extraDetails MS
* photo MS
* telecom MS
* telecom.extension contains
       $ContactPointAvailableTimeExtension named contactpoint-availabletime 0..* MS and
       ViaIntermediary named via-intermediary 0..* MS
* telecom.system MS
* telecom.value MS
* telecom.rank MS
* telecom.use MS
* telecom.period MS
* coverageArea only Reference(PlannetLocation)
* coverageArea MS
* serviceProvisionCode MS
* eligibility MS
* program MS
* characteristic MS
* referralMethod MS
* appointmentRequired MS
* availableTime MS
* availableTime.daysOfWeek MS
* availableTime.allDay MS
* availableTime.availableStartTime MS
* availableTime.availableEndTime MS
* notAvailable MS
* notAvailable.description MS
* notAvailable.during MS
* availabilityExceptions MS
* endpoint only Reference(PlannetEndpoint)
* endpoint MS




Profile:        PlannetInsurancePlan
Parent:         InsurancePlan
Id:             plannet-insuranceplan
Title:          "Plan-net InsurancePlan"
Description:    "An InsurancePlan..."
* identifier.extension contains $IdentifierStatusExtension named identifier-status  1..* MS
* identifier.id MS
* identifier.use MS
* identifier.system MS
* identifier.type MS
* identifier.value MS
* identifier.period MS
* identifier.assigner MS
* status 1..1 MS
* type 0..1 MS
* name MS
* alias MS
* ownedBy 1..1 MS
* ownedBy only Reference(PlannetOrganization)
* administeredBy 1..1 MS
* administeredBy only Reference(PlannetOrganization)
* coverageArea only Reference(PlannetLocation)
* coverageArea MS
* contact MS
* contact.name MS
* contact.name.use MS
* contact.name.text MS
* contact.name.family MS
* contact.name.given MS
* contact.name.prefix MS
* contact.name.suffix MS
* contact.name.period MS
* contact.telecom MS
* contact.telecom.extension contains
       $ContactPointAvailableTimeExtension named contactpoint-availabletime 0..* MS and
       ViaIntermediary named via-intermediary 0..* MS
* contact.telecom.value MS
* contact.telecom.system MS
* contact.telecom.use MS
* contact.telecom.period MS
* endpoint only Reference(PlannetEndpoint)
* network only Reference(PlannetNetwork)


Profile:        PlannetLocation
Parent:         USCoreLocation
Id:             plannet-location
Title:          "Plan-net Location"
Description:    "A Location... "
* extension contains
    NewPatients named newpatients 0..* MS and
    $AccessibilityExtension named accessibility 0..* MS and 
    $NewPatientProfileExtension named newpatientprofile 0..* MS
* identifier.extension contains $IdentifierStatusExtension named identifier-status  1..* MS
* identifier.id MS
* identifier.use MS
* identifier.system MS
* identifier.type MS
* identifier.value MS
* identifier.period MS
* identifier.assigner MS
* status 1..1 MS
* alias MS
* description MS
* mode 0..0
* type MS
* telecom MS
* telecom.extension contains
       $ContactPointAvailableTimeExtension named contactpoint-availabletime 0..* MS and
       ViaIntermediary named via-intermediary 0..* MS
* telecom.system MS
* telecom.value MS
* telecom.rank MS
* telecom.use MS
* telecom.period MS
* physicalType MS
* position MS
* managingOrganization 1..1 MS
* managingOrganization only Reference(PlannetOrganization)
* partOf 1..1 MS
* partOf only Reference(PlannetLocation)
* hoursOfOperation MS
* hoursOfOperation.daysOfWeek MS
* hoursOfOperation.allDay MS
* hoursOfOperation.openingTime MS
* hoursOfOperation.closingTime MS
* availabilityExceptions MS
* endpoint MS
* endpoint only Reference(PlannetEndpoint)


Profile:        PlannetNetwork
Parent:         Organization 
Id:             plannet-network
Title:          "Plan-net Network"
Description:    "A hnetwork..."
* extension contains
    LocationReference named location-reference 0..* MS
* identifier.extension contains $IdentifierStatusExtension named identifier-status  1..* MS
* identifier.id MS
* identifier.use MS
* identifier.system MS
* identifier.type MS
* identifier.value MS
* identifier.period MS
* identifier.assigner MS
* active 1..1 MS
* type MS
* type = ORGTYPE#pay "payer"
* name MS
* alias MS
* telecom 0..0
* address 0..1 MS
* partOf 1..1 MS
* partOf only Reference(PlannetOrganization)
* contact MS
* contact.name MS
* contact.name.use MS
* contact.name.text MS
* contact.name.family MS
* contact.name.given MS
* contact.name.prefix MS
* contact.name.suffix MS
* contact.name.period MS
* contact.telecom MS
* contact.telecom.extension contains
       $ContactPointAvailableTimeExtension named contactpoint-availabletime 0..* MS and
       ViaIntermediary named via-intermediary 0..* MS
* contact.telecom.value 1..1 MS
* contact.telecom.system 1..1 MS
* contact.telecom.use MS
* contact.telecom.period MS
* endpoint only Reference(PlannetEndpoint)
* endpoint MS 



Profile:        PlannetOrganization
Parent:         USCoreOrganization
Id:             plannet-organization
Title:          "Plan-net Organization"
Description:    "An organization is a formal or informal grouping of people or organizations with a common purpose, such as a company, institution, corporation, community group, or healthcare practice.
Guidance:   When the contact is a department name, rather than a human (e.g., patient help line), include a blank family and given name, and provide the department name in contact.nae.text"
* extension contains
   $QualificationExtension named qualification 0..* MS and
   $OrgDescriptionExtension named org-description 0..1 MS
* identifier.extension contains $IdentifierStatusExtension named identifier-status  1..* MS
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
* partOf only Reference(PlannetOrganization)
* address MS
* address.extension contains $GeolocationExtension named geolocation 0..* MS
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
       $ContactPointAvailableTimeExtension named contactpoint-availabletime 0..* MS and
       ViaIntermediary named via-intermediary 0..* MS
* contact.telecom.value MS
* contact.telecom.system MS
* contact.telecom.use MS
* telecom MS
* telecom.extension contains
       $ContactPointAvailableTimeExtension named contactpoint-availabletime 0..* MS and
       ViaIntermediary named via-intermediary 0..* MS
* telecom.system MS
* telecom.value MS
* telecom.rank MS
* telecom.use MS
* telecom.period MS
* endpoint MS

Profile:        PlannetOrganizationAffiliation
Parent:         OrganizationAffiliation
Id:             plannet-organizationAffiliation
Title:          "Plan-net OrganizationAffiliation"
Description:    "An OrganizationAffiliation..."
* identifier.extension contains $IdentifierStatusExtension named identifier-status  1..* MS
* identifier.id MS
* identifier.use MS
* identifier.system MS
* identifier.type MS
* identifier.value MS
* identifier.period MS
* identifier.assigner MS
* active MS
* period MS
* organization only Reference (PlannetOrganization)
* participatingOrganization only Reference (PlannetOrganization)
* network only Reference (PlannetNetwork)
* code MS
* specialty MS
* location only Reference (PlannetLocation)
* healthcareService only Reference (PlannetHealthcareService)
* telecom MS
* telecom.system MS
* telecom.value MS
* telecom.rank MS
* telecom.use MS
* telecom.period MS
* endpoint MS




Profile:        PlannetPractitioner
Parent:         USCorePractitioner
Id:             plannet-practitioner
Title:          "Plan-net Practitioner"
Description:    "Practitioner is a person who is directly or indirectly involved in the provisioning of healthcare."
* extension contains
   $AccessibilityExtension named accessibility 0..1 MS and
   $CommunicationProficiencyExtension named communication-proficiency 0..1 MS
* identifier.extension contains $IdentifierStatusExtension named identifier-status  1..* MS
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
* address.extension contains $GeolocationExtension named geolocation 0..* MS
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
    $ContactPointAvailableTimeExtension named contactpoint-availabletime 0..* MS and
    ViaIntermediary named via-intermediary 0..* MS
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
    $PractitionerQualificationExtension named practitioner-qualification 0..1 MS
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



Profile:        PlannetPractitionerRole
Parent:         USCorePractitionerRole
Id:             plannet-practitionerRole
Title:          "Plan-net PractitionerRole USCore"
Description:    "Practitioner is a person who is directly or indirectly involved in the provisioning of healthcare."
* extension contains
   NewPatients named newpatients 0..* MS and
   $NewPatientProfileExtension named newpatientprofile 0..* MS and
   NetworkReference named network-reference 0..* MS and
   $QualificationExtension named qualification 0..* MS
* identifier.extension contains $IdentifierStatusExtension named identifier-status  1..* MS
* identifier.id MS
* identifier.use MS
* identifier.system MS
* identifier.type MS
* identifier.value MS
* identifier.period MS
* identifier.assigner MS
* active 1..1 MS
* period MS 
* practitioner only Reference(PlannetPractitioner)
* organization only Reference(PlannetOrganization) 
* practitioner 1..1  MS
* organization 1..1  MS 
* code 1..1 MS
* location only Reference(PlannetLocation) 
* location MS 
* healthcareService only Reference(PlannetHealthcareService)
* telecom MS
* telecom.extension contains
    $ContactPointAvailableTimeExtension named contactpoint-availabletime 0..* MS and
    ViaIntermediary named via-intermediary 0..* MS
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
* endpoint only Reference(PlannetEndpoint) 
* endpoint 0..* MS 

Profile:        PlannetPractitionerRoleR4
Parent:         PractitionerRole
Id:             plannet-practitionerRole-r4
Title:          "Plan-net PractitionerRole R4"
Description:    "Practitioner is a person who is directly or indirectly involved in the provisioning of healthcare."
* extension contains
   NewPatients named newpatients 0..* MS and
   $NewPatientProfileExtension named newpatientprofile 0..* MS and
   NetworkReference named network-reference 0..* MS and
   $QualificationExtension named qualification 0..* MS
* identifier.extension contains $IdentifierStatusExtension named identifier-status  1..* MS
* identifier.id MS
* identifier.use MS
* identifier.system MS
* identifier.type MS
* identifier.value MS
* identifier.period MS
* identifier.assigner MS
* active 1..1 MS
* period MS 
* practitioner only Reference(PlannetPractitioner)   // 1..1 from USCore
* organization only Reference(PlannetOrganization)         // 1..1 from USCore
* practitioner 0..1  MS   // 1..1 from USCore
* organization 1..1   MS        // 1..1 from USCore
* code  from  us-core-provider-role-vs (required) 
* code 1..1  MS
* specialty from  us-core-provider-specialty-vs (required)
* specialty 0..1 MS
* location only Reference(PlannetLocation)
* location MS
* healthcareService only Reference(PlannetHealthcareService)
* telecom MS
* telecom.extension contains
    $ContactPointAvailableTimeExtension named contactpoint-availabletime 0..* MS and
    ViaIntermediary named via-intermediary 0..* MS
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
* endpoint only Reference(PlannetEndpoint) 
* endpoint 0..* MS

Extension: EndpointUsecase
Id: endpoint-usecase
Title: "Endpoint Usecase"
Description: "Endpoint Usecase"
* value[x] 0..0
* extension contains
   Type named Type 1..1 MS and
   Standard named Standard 0..1 MS 

Extension: Type
Id: type
Title: "Endpoint Usecase Type"
Description: "Endpoint Usecase Type"
* value[x] only  CodeableConcept 
* valueCodeableConcept MS
* valueCodeableConcept from http://hl7.org/fhir/uv/vhdir/CodeSystem/usecase (extensible)


Extension: Standard
Id: standard
Title: "standard"
Description: "standard"
* value[x] only uri 
* valueUri MS


Extension: ViaIntermediary
Id: via-intermediary
Title: "Via Intermediary"
Description: "Via Intermediary"
* value[x] only Reference
* valueReference MS
* valueReference only Reference(PlannetOrganization | PlannetPractitionerRole | PlannetOrganizationAffiliation | PlannetLocation) 


Extension: LocationReference
Id: location-reference
Title: "Location Reference"
Description: "Location Reference"
* value[x] only Reference
* valueReference MS
* valueReference only Reference(PlannetLocation) 

Extension: NetworkReference
Id: network-reference
Title: "Network Reference"
Description: "Network Reference"
* value[x] only Reference
* valueReference MS
* valueReference only Reference(PlannetNetwork) 

Extension: NewPatients
Id: newpatients
Title: "New Patients"
Description: "NewPatients"
* value[x] 0..0
* extension contains
   AcceptingPatients named AcceptingPatients 1..1 MS and
   FromNetwork named FromNetwork 0..1 MS 

Extension: AcceptingPatients
Id:  acceptingPatients
Title: "Accepting Patients"
Description: "Boolean whether accepting patients in associated network"
* value[x] only boolean
* valueBoolean MS 

Extension: FromNetwork
Id: fromNetwork
Title: "Network Reference"
Description: "Network Reference"
* value[x] only Reference
* valueReference MS
* valueReference only Reference(PlannetNetwork) 