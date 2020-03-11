# PDEX Payer Network Implementation Guide

## Table Of Contents

*   [Introduction](#introduction)
*   [Disclaimers and Assumptions](#disclaimers-assumptions)
*   [Background](#background)
*   [Use Cases](#use-cases)
*   [Overview of PDEX Payer Network - Resource Relationships](#overview)
*   [Endpoint](#endpoint)
*   [HealthcareService](#healthcare-service)
*   [InsurancePlan](#insuranceplan)
*   [Location](#location)
*   [Network](#network)
*   [Organization](#organization)
*   [Organization Affiliation](#organization-affiliation)
*   [Practitioner](#practitioner)
*   [Practitioner Role](#practitioner-role)
*   [Conformance](#conformance)
*   [Credits](#credits)
*   [Authors](#authors)

## Introduction

This implementation guide defines a FHIR interface to a health insurer's insurance plans, their associated networks, and the organizations and providers that participate in these networks. Publication of this data through a standard FHIR-based API will enable third parties to develop applications through which consumers and providers can query the contents of a payer's network to identify providers that can address their health care needs. ALthough there are multiple types and sources of providers directories, including provider organizations (i.e., a hospital listing all its physicians), government (i.e., listing of providers in Medicare), payers (i.e., a health plan's provider network), and third-party entities (such as vendors that maintain provider directories), the focus of this implementation guide in on Payer Provider Directories.

The PDEX Payer Network (or Plan-Net) Implementation Guide is based on the [Validated Healthcare Directory Implementation Guide (VHDir IG)](http://hl7.org/fhir/uv/vhdir/2018Sep/index.html), an international standard. The VHDir IG is based on [FHIR Version 4.0](http://build.fhir.org/). It was developed in cooperation with the [Office of the National Coordinator for Health Information Technology (ONC)](http://www.healthit.gov/newsroom/about-onc) and [Federal Health Architecture (FHA)](https://www.healthit.gov/policy-researchers-implementers/federal-health-architecture-fha) with guidance from HL7 International, the Patient Administration Workgroup, and the HL7 US Realm Steering Committee. As shown in the diagram below, it describes the architectural considerations for attesting to, validating, and exchanging data from a central source of validated provider data as part of a Validated Healthcare Directory or VHDir, as well as a RESTful FHIR API for accessing data from a VHDir. The VHDir authors developed the IG to support a conceptual, centralized, national source of healthcare data that would be used across multiple use cases.

![Scope](Bob1.png)

The use of VhDir as the conceptual base for the PDEX Payer Network Implementation Guide, including reuse by reference of most of the extensions defined there, is intended to protect implementers of the Plan-Net IG from rework/remapping when the VHDir concept reaches implementation, and becomes a source of data for the PDEX Payer Network. The primary changes from the VHDir IG are to:

1.  remove the validation and restriction resources
2.  use US Core for R4 as the base suite of profiles
3.  eliminate extensions that are not necessary for this use case
4.  introduce additional constraints (e.g. search criteria, cardinality, and MustSupport) where appropriate.

The diagram below depicts the scope of this implementation guide (IG). The IG defines the API that exposes a payer’s provider network (including pharmacy locations where appropriate) for access by a consumer or provider application. This is a query only API (GET) and does not support PUT or POST.

![Local](Bob3.png)

## Relation to US Core and other IGs

This implementation guide was written for a US audience and profiles resources from the R4 version of the US Core IG, where available (Practitioner, PractitionerRole, Organization and Location), and otherwise from R4 (OrganizationAffiliation, HealthCareService, Endpoint). Alignment with VhDir is maintained by using extensions from VhDir where possible.

## Disclaimers and Assumptions

*   **PDEX Payer Network is based conceptually on VhDir**: The PDEX Payer Network implementation guide is based conceptually on the VhDir implementation guide, which is still a work in progress. Plan-net will need to track changes to VhDir to fulfill its goal of minimizing rework.
*   **The Plan-Net directory endpoint is known to the client**: This implementation guide assumes that the directory endpoint is known to the client.  There is an overarching system architecture issue that is critical to resolve -- how does the client discover the FHIR endpoint of interest.   For the purposes of this IG, we consider that problem out of scope.

## Background

Provider directories play a critical role in enabling identification of individual providers and provider organizations, as well as characteristics about them. Provider directories support a variety of use cases, including:

*   Patient/Payer focused
    *   Find provider accessibility information (specialty, office hours, languages spoken, taking patients) - enables individuals and consumers to find contact and other accessibility information for individual healthcare providers and/or healthcare organizations
    *   Relationship between provider and insurance plan (insurance accepted) or plan and provider (network) - enables individual healthcare providers, organizations, and payers to discover the relationships between providers, organizations, and payers, as well as additional details about the relationships and entities involved
*   Basic Information Exchange
    *   Enable electronic exchange (e.g. discovery of electronic endpoints such as IHE/EHR endpoints, FHIR server URLs, Direct addresses) - enables the electronic exchange of health information by supporting the ability to discover electronic service information including electronic endpoints or electronic addresses
    *   Find an individual and/or organization (even if no electronic endpoint is available) - enables users to find contact and other identifying information about healthcare organizations and individual healthcare providers

ALl use cases involve an application or consumer client querying a service provided by a payer.

## Use Case Examples

*   Find Information about a Specific Practitioner

*   Lookup by Name
*   Lookup by NPI

NPI = 1237551547 GET https://davinci-plan-net-ri.logicahealth.org/fhir/Practitioner?identifier=1237551547

https://davinci-plan-net-ri.logicahealth.org/fhir/PractitionerRole?practitioner.identifier=1235733566

*   What Insurance Plans does a Practitioner Accept

*   Find a Practitioner based on Properties

*   Find a specialist who accepts my insurance and is affiliated with my local hospital
*   Find a specialist who has office hours on Wednesdays
*   Find a practitioner near me who accepts my insurance and is accepting new patients
*   Find a female practitioner near me who speaks Spanish

*   Healthcare Services

*   Who provides opthalmology services in my area
*   What locations provide specialty services for my local hospital network

## Overview of Payer Directory - Resource Relationships

Note: the following diagrams provide a high-level view of the relationships between resources used in this IG. They do not necessarily reflect all of the relationships/references between resources.

### Practitioner

A practitioner is a person who is directly or indirectly involved in the provisioning of healthcare.

### Practitioner Role

PractitionerRole describes the role a practitioner plays at an organization, including the services they provide, the location(s) where they work, and their availability, electronic endpoints, and other relevant information. Practitioners may also participate in healthcare provider insurance networks through their role at an organization.

**Figure 1: Practitioner and PractionerRole**

![Practitioner and PractitionerRole](PractitionerRole.png)

### Organization

An organization is a formal or informal grouping of people or organizations with a common purpose, such as a company, institution, corporation, community group, or healthcare practice. The Organization resource often exists as a hierarchy of organization resources, using the part-of property to provide the association of the child to its parent organization. This organizational hierarchy helps communicate the conceptual structure, whereas the Location resource provides the physical representation of the hierarchy. The linkage between Organization and Location is from each point in the location hierarchy to the appropriate level in the Organization hierarchy. These links don't all have to be to the top level Organization.

In the Plan-Net context, organizations can represent payers, pharmacy companies, and various types of provider organizations.

**Figure 2: Organization**

![Organization](Organization.png)

### Organization Affiliation

Similar to PractitionerRole, OrganizationAffiliation describes relationships between organizations. For example: 1) the relationship between an organization and an association it is a member of (e.g. hospitals in a hospital association), 2) an organization that provides services to another organization, such as an organization contracted to provide mental health care for another organization as part of a healthcare provider insurance network, and 3) distinct organizations forming a partnership to provide services (e.g. a cancer center).

**Figure 3: OrganizationAffiliation**

![Organization Affiliation](OrganizationAffiliation.png)

### InsurancePlan

InsurancePlan describes a health insurance offering comprised of a list of covered benefits (i.e. the product), costs associated with those benefits (i.e. the plan), and additional information about the offering, such as who it is owned and administered by, a coverage area, contact information, etc.

**Figure 4: InsurancePlan**

![Insurance Plan](InsurancePlan.png)

### Healthcare Service

The HealthcareService resource is used to describe a single healthcare service or category of services that are provided by an organization at a location. The location of the services could be virtual, as with telemedicine services.

**Figure 5: Healthcare Service**

![HealthcareService](HealthcareService.png)

### Endpoint

An endpoint describes the technical details of a location that can be connected to for the delivery/retrieval of information. Sufficient information is required to ensure that a connection can be made securely, and appropriate data transmitted as defined by the endpoint owner.

### Location

A Location is the physical place where healthcare services are provided, practitioners are employed, organizations are based, etc. Locations can range in scope from a room in a building to a geographic region/area.

### Network

A network is a group of practitioners and organizations that provide healthcare services for individuals enrolled in a health insurance product/plan (typically on behalf of a payer).

**Figure 6: Network**

![Network](Network.png)

## Privacy Considerations

Access to the plan-net service should not require authentication, and the server should not maintain any records that could associate the consumer with the entities that were queried.

A conformant plan-net service SHALL NOT require a directory mobile application to send consumer identifying information in order to query content.

A directory mobile application SHALL NOT send consumer identifiable information when querying a formulary service.

# Conformance

The conformance verbs - SHALL, SHOULD, MAY - used in this guide are defined in [FHIR Conformance Rules](https://trifolia-fhir-dev.lantanagroup.com/http:/hl7.org/fhir/R4/conformance-rules.html).

## Must Support

When querying and reading the Plan-Net Profiles defined in this IG, Must Support on any profile data element **SHALL** be interpreted as follows:

### Health Plan API Requirements

*   Health Plan API actors **SHALL** be capable of populating all data elements as part of the query results.
*   In situations where information on a particular data element is not present and the cardinality is 0.. , the Health Plan API actors **SHALL NOT** include the data elements in the resource instance returned as part of the query results.
*   In situations where information on a particular data element is not present and the cardinality is >0.. **SHALL** send the reason for the missing information using values (such as nullFlavors) from the value set where they exist or use the dataAbsentReason extension.

### Application Requirements

*   Application actors **SHALL** be capable of processing resource instances containing the data elements without generating an error or causing the application to fail.
*   Application actors **SHOULD** be capable of displaying the data elements for human use or storing the information for other purposes.
*   When querying Health Plan API actors, Application actors **SHALL** interpret missing data elements within resource instances as data not present in the Health Plan API actors system.
*   Consumer App actors **SHALL** be able to process resource instances containing data elements asserting missing information.

## Conformance to US Core Profiles

Any actor acting as a Health Plan API actor in this IG **SHALL**:

*   Be able to populate all profile data elements that have a minimum cardinality >= 1 and/or flagged as Must Support as defined by that profiles StructureDefinition.
*   Conform to the US Core Server Capability Statement expectations for that profiles type.
*   Any actor acting a FHIR Client in this IG **SHALL**:

*   Be able to process and retain all profile data elements that have a minimum cardinality >= 1 and/or flagged as Must Support as defined by that profiles StructureDefinition.
*   Conform to the US Core Client Capability Statement expectations for that profiles type.

# Credits

This IG was developed by the MITRE Corporation under the direction of the authors using the [Clinical Information Modeling and Profiling Language (CIMPL)](http://standardhealthrecord.org/cimpl-doc/), a free, open source toolchain from the MITRE Corporation.

# Authors
|   Name               |   E-mail                               |
|:--------------------:|:--------------------------------------:|
| Dan Chaput           | daniel.chaput@hhs.gov                  |
| Alex Kontur          | alex.kontur@hhs.gov                    |
| Brian Postlethwaite  | brian.postlethwaite@health.telstra.com |
| Bob Dieterle         | rdieterle@enablecare.us                |
