

<div xmlns="http://www.w3.org/1999/xhtml" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://hl7.org/fhir ../../input-cache/schemas-r5/fhir-single.xsd">

<h3><a name="Examples"></a>Plan-Net FHIR Examples</h3>
<h3 name="Search Parameters">
Search Parameters defined as part of this Implementation Guide
</h3>
<table class="codes">
  <thead>
    <tr>
      <td>
        <b>Name</b>
      </td>
      <td>
        <b>Base Resources</b>
      </td>
      <td>
        <b>Type</b>
      </td>
      <td>
        <b>Description</b>
      </td>
    </tr>
  </thead>
  <tbody>
    <tr>
              <td><a href="SearchParameter-plannet-available-days.html">available-days</a></td>
              <td>HealthcareService, PractitionerRole, Location</td>
              <td>token</td>
              <td>{% capture md_text %}Days available{% endcapture %}{{ md_text | markdownify }}</td>
            </tr><tr>
              <td><a href="SearchParameter-plannet-available-end-time.html">available-end-time</a></td>
              <td>HealthcareService, PractitionerRole, Location</td>
              <td>token</td>
              <td>{% capture md_text %}Available end time{% endcapture %}{{ md_text | markdownify }}</td>
            </tr><tr>
              <td><a href="SearchParameter-plannet-available-start-time.html">available-start-time</a></td>
              <td>HealthcareService, PractitionerRole, Location</td>
              <td>token</td>
              <td>{% capture md_text %}Available start time{% endcapture %}{{ md_text | markdownify }}</td>
            </tr><tr>
              <td><a href="SearchParameter-endpoint-connection-type.html">connection-type</a></td>
              <td>Endpoint</td>
              <td>token</td>
              <td>{% capture md_text %}Select Endpoints that support the specified protocol/profile/standard{% endcapture %}{{ md_text | markdownify }}</td>
            </tr><tr>
              <td><a href="SearchParameter-endpoint-identifier-assigner.html">identifier-assigner</a></td>
              <td>Endpoint</td>
              <td>reference</td>
              <td>{% capture md_text %}Select Endpoints with an identifier issued by the specified organization{% endcapture %}{{ md_text | markdownify }}</td>
            </tr><tr>
              <td><a href="SearchParameter-endpoint-identifier.html">identifier</a></td>
              <td>Endpoint</td>
              <td>token</td>
              <td>{% capture md_text %}Select Endpoints with the specified identifier{% endcapture %}{{ md_text | markdownify }}</td>
            </tr><tr>
              <td><a href="SearchParameter-endpoint-mime-type.html">mime-type</a></td>
              <td>Endpoint</td>
              <td>token</td>
              <td>{% capture md_text %}Select endpoints that support the specified media type{% endcapture %}{{ md_text | markdownify }}</td>
            </tr><tr>
              <td><a href="SearchParameter-endpoint-organization.html">organization</a></td>
              <td>Endpoint</td>
              <td>reference</td>
              <td>{% capture md_text %}Select Endpoints managed by the specified organization{% endcapture %}{{ md_text | markdownify }}</td>
            </tr><tr>
              <td><a href="SearchParameter-endpoint-payload-type.html">payload-type</a></td>
              <td>Endpoint</td>
              <td>token</td>
              <td>{% capture md_text %}Select Endpoints that support the specified type of content{% endcapture %}{{ md_text | markdownify }}</td>
            </tr><tr>
              <td><a href="SearchParameter-endpoint-usecase-standard.html">usecase-standard</a></td>
              <td>Endpoint</td>
              <td>uri</td>
              <td>{% capture md_text %}Select endpoints that support the specified standard{% endcapture %}{{ md_text | markdownify }}</td>
            </tr><tr>
              <td><a href="SearchParameter-endpoint-usecase-type.html">usecase-type</a></td>
              <td>Endpoint</td>
              <td>token</td>
              <td>{% capture md_text %}Select endpoints that support the type of services indicated by the specified code{% endcapture %}{{ md_text | markdownify }}</td>
            </tr><tr>
              <td><a href="SearchParameter-healthcareservice-characteristic.html">characteristic</a></td>
              <td>HealthcareService</td>
              <td>token</td>
              <td>{% capture md_text %}Select HealthcareServices with the specified characteristic{% endcapture %}{{ md_text | markdownify }}</td>
            </tr><tr>
              <td><a href="SearchParameter-healthcareservice-coverage-area.html">coverage-area</a></td>
              <td>HealthcareService</td>
              <td>reference</td>
              <td>{% capture md_text %}Select services available in a region described by the specified location{% endcapture %}{{ md_text | markdownify }}</td>
            </tr><tr>
              <td><a href="SearchParameter-healthcareservice-endpoint.html">endpoint</a></td>
              <td>HealthcareService</td>
              <td>reference</td>
              <td>{% capture md_text %}Select HealthcareServices with the specified endpoint{% endcapture %}{{ md_text | markdownify }}</td>
            </tr><tr>
              <td><a href="SearchParameter-healthcareservice-identifier-assigner.html">identifier-assigner</a></td>
              <td>HealthcareService</td>
              <td>reference</td>
              <td>{% capture md_text %}Select HealthcareServices with an identifier issued by the specified organization{% endcapture %}{{ md_text | markdownify }}</td>
            </tr><tr>
              <td><a href="SearchParameter-healthcareservice-identifier.html">identifier</a></td>
              <td>HealthcareService</td>
              <td>token</td>
              <td>{% capture md_text %}Select HealthcareServices with the specified identifier{% endcapture %}{{ md_text | markdownify }}</td>
            </tr><tr>
              <td><a href="SearchParameter-healthcareservice-location.html">location</a></td>
              <td>HealthcareService</td>
              <td>reference</td>
              <td>{% capture md_text %}Select HealthcareServices available at the specified location{% endcapture %}{{ md_text | markdownify }}</td>
            </tr><tr>
              <td><a href="SearchParameter-healthcareservice-name.html">name</a></td>
              <td>HealthcareService</td>
              <td>string</td>
              <td>{% capture md_text %}Select HealthcareServices with the specified name{% endcapture %}{{ md_text | markdownify }}</td>
            </tr><tr>
              <td><a href="SearchParameter-healthcareservice-new-patient-network.html">new-patient-network</a></td>
              <td>HealthcareService</td>
              <td>reference</td>
              <td>{% capture md_text %}Select HealthcareServices that are part of the specified network and are/are not accepting new patients{% endcapture %}{{ md_text | markdownify }}</td>
            </tr><tr>
              <td><a href="SearchParameter-healthcareservice-new-patient.html">new-patient</a></td>
              <td>HealthcareService</td>
              <td>token</td>
              <td>{% capture md_text %}Select HealthcareServices that are/are not accepting new patients{% endcapture %}{{ md_text | markdownify }}</td>
            </tr><tr>
              <td><a href="SearchParameter-healthcareservice-organization.html">organization</a></td>
              <td>HealthcareService</td>
              <td>reference</td>
              <td>{% capture md_text %}Select HealthcareServices provided by the specified organization{% endcapture %}{{ md_text | markdownify }}</td>
            </tr><tr>
              <td><a href="SearchParameter-healthcareservice-service-category.html">service-category</a></td>
              <td>HealthcareService</td>
              <td>token</td>
              <td>{% capture md_text %}Select HealthcareServices providing the specified category of services{% endcapture %}{{ md_text | markdownify }}</td>
            </tr><tr>
              <td><a href="SearchParameter-healthcareservice-service-type.html">service-type</a></td>
              <td>HealthcareService</td>
              <td>token</td>
              <td>{% capture md_text %}Select HealthcareServices of the specified type{% endcapture %}{{ md_text | markdownify }}</td>
            </tr><tr>
              <td><a href="SearchParameter-healthcareservice-specialty.html">specialty</a></td>
              <td>HealthcareService</td>
              <td>token</td>
              <td>{% capture md_text %}Select services associated with the specified specialty{% endcapture %}{{ md_text | markdownify }}</td>
            </tr><tr>
              <td><a href="SearchParameter-insuranceplan-administered-by.html">administered-by</a></td>
              <td>InsurancePlan</td>
              <td>reference</td>
              <td>{% capture md_text %}Select products that are administered by the specified organization{% endcapture %}{{ md_text | markdownify }}</td>
            </tr><tr>
              <td><a href="SearchParameter-insuranceplan-coverage-area.html">coverage-area</a></td>
              <td>InsurancePlan</td>
              <td>reference</td>
              <td>{% capture md_text %}Select products that are offered in the specified location{% endcapture %}{{ md_text | markdownify }}</td>
            </tr><tr>
              <td><a href="SearchParameter-insuranceplan-coverage-benefit-type.html">coverage-benefit-type</a></td>
              <td>InsurancePlan</td>
              <td>token</td>
              <td>{% capture md_text %}Select health insurance products offering covered benefits of the specified type{% endcapture %}{{ md_text | markdownify }}</td>
            </tr><tr>
              <td><a href="SearchParameter-insuranceplan-coverage-network.html">coverage-network</a></td>
              <td>InsurancePlan</td>
              <td>reference</td>
              <td>{% capture md_text %}Select products offering covered benefits through the specified health insurance provider network{% endcapture %}{{ md_text | markdownify }}</td>
            </tr><tr>
              <td><a href="SearchParameter-insuranceplan-coverage-type.html">coverage-type</a></td>
              <td>InsurancePlan</td>
              <td>token</td>
              <td>{% capture md_text %}Select products offering the specified type of coverage{% endcapture %}{{ md_text | markdownify }}</td>
            </tr><tr>
              <td><a href="SearchParameter-insuranceplan-identifier.html">identifier</a></td>
              <td>InsurancePlan</td>
              <td>token</td>
              <td>{% capture md_text %}Select products with the specified identifier{% endcapture %}{{ md_text | markdownify }}</td>
            </tr><tr>
              <td><a href="SearchParameter-insuranceplan-name.html">name</a></td>
              <td>InsurancePlan</td>
              <td>string</td>
              <td>{% capture md_text %}Select products with the specified name{% endcapture %}{{ md_text | markdownify }}</td>
            </tr><tr>
              <td><a href="SearchParameter-insuranceplan-network.html">network</a></td>
              <td>InsurancePlan</td>
              <td>reference</td>
              <td>{% capture md_text %}Select products associated with the specified health insurance provider network{% endcapture %}{{ md_text | markdownify }}</td>
            </tr><tr>
              <td><a href="SearchParameter-insuranceplan-owned-by.html">owned-by</a></td>
              <td>InsurancePlan</td>
              <td>reference</td>
              <td>{% capture md_text %}Select products that are owned by the specified organization{% endcapture %}{{ md_text | markdownify }}</td>
            </tr><tr>
              <td><a href="SearchParameter-insuranceplan-plan-coverage-area.html">plan-coverage-area</a></td>
              <td>InsurancePlan</td>
              <td>reference</td>
              <td>{% capture md_text %}Select plans that are available in the specified location{% endcapture %}{{ md_text | markdownify }}</td>
            </tr><tr>
              <td><a href="SearchParameter-insuranceplan-plan-identifier.html">plan-identifier</a></td>
              <td>InsurancePlan</td>
              <td>token</td>
              <td>{% capture md_text %}Select plans with the specified identifier{% endcapture %}{{ md_text | markdownify }}</td>
            </tr><tr>
              <td><a href="SearchParameter-insuranceplan-plan-network.html">plan-network</a></td>
              <td>InsurancePlan</td>
              <td>reference</td>
              <td>{% capture md_text %}Select plans associated with the specified health insurance provider network{% endcapture %}{{ md_text | markdownify }}</td>
            </tr><tr>
              <td><a href="SearchParameter-insuranceplan-plan-type.html">plan-type</a></td>
              <td>InsurancePlan</td>
              <td>token</td>
              <td>{% capture md_text %}Select plans of the specified type{% endcapture %}{{ md_text | markdownify }}</td>
            </tr><tr>
              <td><a href="SearchParameter-insuranceplan-type.html">type</a></td>
              <td>InsurancePlan</td>
              <td>token</td>
              <td>{% capture md_text %}Select insurance plans of the specified type{% endcapture %}{{ md_text | markdownify }}</td>
            </tr><tr>
              <td><a href="SearchParameter-location-accessibility.html">accessibility</a></td>
              <td>Location</td>
              <td>token</td>
              <td>{% capture md_text %}Select locations that offer the specified accessibility options{% endcapture %}{{ md_text | markdownify }}</td>
            </tr><tr>
              <td><a href="SearchParameter-location-address.html">address</a></td>
              <td>Location</td>
              <td>string</td>
              <td>{% capture md_text %}Select Locations with the specified address{% endcapture %}{{ md_text | markdownify }}</td>
            </tr><tr>
              <td><a href="SearchParameter-location-contains.html">contains</a></td>
              <td>Location</td>
              <td>special</td>
              <td>{% capture md_text %}Select locations that contain the specified co-ordinates{% endcapture %}{{ md_text | markdownify }}</td>
            </tr><tr>
              <td><a href="SearchParameter-location-identifier-assigner.html">identifier-assigner</a></td>
              <td>Location</td>
              <td>reference</td>
              <td>{% capture md_text %}Select Locations with an identifier issued by the specified organization{% endcapture %}{{ md_text | markdownify }}</td>
            </tr><tr>
              <td><a href="SearchParameter-location-identifier.html">identifier</a></td>
              <td>Location</td>
              <td>token</td>
              <td>{% capture md_text %}Select Locations with the specified identifier{% endcapture %}{{ md_text | markdownify }}</td>
            </tr><tr>
              <td><a href="SearchParameter-location-new-patient-network.html">new-patient-network</a></td>
              <td>Location</td>
              <td>reference</td>
              <td>{% capture md_text %}Select locations that are part of the specified network and are/are not accepting new patients{% endcapture %}{{ md_text | markdownify }}</td>
            </tr><tr>
              <td><a href="SearchParameter-location-new-patient.html">new-patient</a></td>
              <td>Location</td>
              <td>token</td>
              <td>{% capture md_text %}Select locations that are/are not accepting new patients{% endcapture %}{{ md_text | markdownify }}</td>
            </tr><tr>
              <td><a href="SearchParameter-location-organization.html">organization</a></td>
              <td>Location</td>
              <td>reference</td>
              <td>{% capture md_text %}Select Locations managed by the specified organization{% endcapture %}{{ md_text | markdownify }}</td>
            </tr><tr>
              <td><a href="SearchParameter-location-partof.html">partof</a></td>
              <td>Location</td>
              <td>reference</td>
              <td>{% capture md_text %}Select Locations that are part of the specified location{% endcapture %}{{ md_text | markdownify }}</td>
            </tr><tr>
              <td><a href="SearchParameter-location-type.html">type</a></td>
              <td>Location</td>
              <td>token</td>
              <td>{% capture md_text %}Select Locations of the specified type{% endcapture %}{{ md_text | markdownify }}</td>
            </tr><tr>
              <td><a href="SearchParameter-organization-address-city.html">address-city</a></td>
              <td>Organization</td>
              <td>string</td>
              <td>{% capture md_text %}Select organizations with an address in the specified city{% endcapture %}{{ md_text | markdownify }}</td>
            </tr><tr>
              <td><a href="SearchParameter-organization-address-country.html">address-country</a></td>
              <td>Organization</td>
              <td>string</td>
              <td>{% capture md_text %}Select organizations with an address in the specified country{% endcapture %}{{ md_text | markdownify }}</td>
            </tr><tr>
              <td><a href="SearchParameter-organization-address-postalcode.html">address-postalcode</a></td>
              <td>Organization</td>
              <td>string</td>
              <td>{% capture md_text %}Select organizations with an address with the specified postal code{% endcapture %}{{ md_text | markdownify }}</td>
            </tr><tr>
              <td><a href="SearchParameter-organization-address-state.html">address-state</a></td>
              <td>Organization</td>
              <td>string</td>
              <td>{% capture md_text %}Select organizations with an address in the specified state{% endcapture %}{{ md_text | markdownify }}</td>
            </tr><tr>
              <td><a href="SearchParameter-organization-address.html">address</a></td>
              <td>Organization</td>
              <td>string</td>
              <td>{% capture md_text %}Select organizations with the specified address (matches any of the string elements of an address){% endcapture %}{{ md_text | markdownify }}</td>
            </tr><tr>
              <td><a href="SearchParameter-organization-coverage-area.html">coverage-area</a></td>
              <td>Organization</td>
              <td>reference</td>
              <td>{% capture md_text %}Select health insurance provider networks available in a region described by the specified location{% endcapture %}{{ md_text | markdownify }}</td>
            </tr><tr>
              <td><a href="SearchParameter-organization-endpoint.html">endpoint</a></td>
              <td>Organization</td>
              <td>reference</td>
              <td>{% capture md_text %}Select Organizations with the specified endpoint{% endcapture %}{{ md_text | markdownify }}</td>
            </tr><tr>
              <td><a href="SearchParameter-organization-identifier-assigner.html">identifier-assigner</a></td>
              <td>Organization</td>
              <td>reference</td>
              <td>{% capture md_text %}Select Organizations with an identifier issued by the specified organization{% endcapture %}{{ md_text | markdownify }}</td>
            </tr><tr>
              <td><a href="SearchParameter-organization-identifier.html">identifier</a></td>
              <td>Organization</td>
              <td>token</td>
              <td>{% capture md_text %}Select Organizations with the specified identifier{% endcapture %}{{ md_text | markdownify }}</td>
            </tr><tr>
              <td><a href="SearchParameter-organization-name.html">name</a></td>
              <td>Organization</td>
              <td>string</td>
              <td>{% capture md_text %}Select Organizations with the specified name{% endcapture %}{{ md_text | markdownify }}</td>
            </tr><tr>
              <td><a href="SearchParameter-organization-partof.html">partof</a></td>
              <td>Organization</td>
              <td>reference</td>
              <td>{% capture md_text %}Select Organizations that are part of the specified organization{% endcapture %}{{ md_text | markdownify }}</td>
            </tr><tr>
              <td><a href="SearchParameter-organization-qualification-code.html">qualification-code</a></td>
              <td>Organization</td>
              <td>token</td>
              <td>{% capture md_text %}Select Organizations with a type of qualification matching the specified code{% endcapture %}{{ md_text | markdownify }}</td>
            </tr><tr>
              <td><a href="SearchParameter-organization-qualification-issuer.html">qualification-issuer</a></td>
              <td>Organization</td>
              <td>reference</td>
              <td>{% capture md_text %}Select Organizations with a qualification issued by the specified organization{% endcapture %}{{ md_text | markdownify }}</td>
            </tr><tr>
              <td><a href="SearchParameter-organization-qualification-wherevalid-code.html">qualification-wherevalid-code</a></td>
              <td>Organization</td>
              <td>token</td>
              <td>{% capture md_text %}Select Organizations with a qualification that is valid at the location indicated by the specified code{% endcapture %}{{ md_text | markdownify }}</td>
            </tr><tr>
              <td><a href="SearchParameter-organization-qualification-wherevalid-location.html">qualification-wherevalid-location</a></td>
              <td>Organization</td>
              <td>reference</td>
              <td>{% capture md_text %}Select Organizations with a qualification that is valid at the specified location{% endcapture %}{{ md_text | markdownify }}</td>
            </tr><tr>
              <td><a href="SearchParameter-organization-type.html">type</a></td>
              <td>Organization</td>
              <td>token</td>
              <td>{% capture md_text %}Select Organizations of the specified type{% endcapture %}{{ md_text | markdownify }}</td>
            </tr><tr>
              <td><a href="SearchParameter-organizationaffiliation-identifier-assigner.html">identifier-assigner</a></td>
              <td>OrganizationAffiliation</td>
              <td>reference</td>
              <td>{% capture md_text %}Select OrganizationAffiliations with an identifier issued by the specified organization{% endcapture %}{{ md_text | markdownify }}</td>
            </tr><tr>
              <td><a href="SearchParameter-organizationaffiliation-identifier.html">identifier</a></td>
              <td>OrganizationAffiliation</td>
              <td>token</td>
              <td>{% capture md_text %}Select OrganizationAffiliations with the specified identifier{% endcapture %}{{ md_text | markdownify }}</td>
            </tr><tr>
              <td><a href="SearchParameter-organizationaffiliation-location.html">location</a></td>
              <td>OrganizationAffiliation</td>
              <td>reference</td>
              <td>{% capture md_text %}Select OrganizationAffiliations available at the specified location{% endcapture %}{{ md_text | markdownify }}</td>
            </tr><tr>
              <td><a href="SearchParameter-organizationaffiliation-network.html">network</a></td>
              <td>OrganizationAffiliation</td>
              <td>reference</td>
              <td>{% capture md_text %}Select roles where the organization is a member of the specified health insurance provider network{% endcapture %}{{ md_text | markdownify }}</td>
            </tr><tr>
              <td><a href="SearchParameter-organizationaffiliation-participating-organization.html">participating-organization</a></td>
              <td>OrganizationAffiliation</td>
              <td>reference</td>
              <td>{% capture md_text %}Select roles filled by the specified organization{% endcapture %}{{ md_text | markdownify }}</td>
            </tr><tr>
              <td><a href="SearchParameter-organizationaffiliation-primary-organization.html">primary-organization</a></td>
              <td>OrganizationAffiliation</td>
              <td>reference</td>
              <td>{% capture md_text %}Select roles offered by the specified organization{% endcapture %}{{ md_text | markdownify }}</td>
            </tr><tr>
              <td><a href="SearchParameter-organizationaffiliation-role.html">role</a></td>
              <td>OrganizationAffiliation</td>
              <td>token</td>
              <td>{% capture md_text %}Select OrganizationAffiliations with the specified role{% endcapture %}{{ md_text | markdownify }}</td>
            </tr><tr>
              <td><a href="SearchParameter-organizationaffiliation-service.html">service</a></td>
              <td>OrganizationAffiliation</td>
              <td>reference</td>
              <td>{% capture md_text %}Select OrganizationAffiliations providing the specified service{% endcapture %}{{ md_text | markdownify }}</td>
            </tr><tr>
              <td><a href="SearchParameter-organizationaffiliation-specialty.html">specialty</a></td>
              <td>OrganizationAffiliation</td>
              <td>token</td>
              <td>{% capture md_text %}Select OrganizationAffiliations associated with the specified specialty{% endcapture %}{{ md_text | markdownify }}</td>
            </tr><tr>
              <td><a href="SearchParameter-practitioner-family-name.html">family</a></td>
              <td>Practitioner</td>
              <td>string</td>
              <td>{% capture md_text %}Select Practitioners with the specified family name{% endcapture %}{{ md_text | markdownify }}</td>
            </tr><tr>
              <td><a href="SearchParameter-practitioner-given-name.html">given</a></td>
              <td>Practitioner</td>
              <td>string</td>
              <td>{% capture md_text %}Select Practitioners with the specified given name{% endcapture %}{{ md_text | markdownify }}</td>
            </tr><tr>
              <td><a href="SearchParameter-practitioner-identifier-assigner.html">identifier-assigner</a></td>
              <td>Practitioner</td>
              <td>reference</td>
              <td>{% capture md_text %}Select Practitioners with an identifier issued by the specified organization{% endcapture %}{{ md_text | markdownify }}</td>
            </tr><tr>
              <td><a href="SearchParameter-practitioner-identifier.html">identifier</a></td>
              <td>Practitioner</td>
              <td>token</td>
              <td>{% capture md_text %}Select Practitioners with the specified identifier{% endcapture %}{{ md_text | markdownify }}</td>
            </tr><tr>
              <td><a href="SearchParameter-practitioner-name.html">name</a></td>
              <td>Practitioner</td>
              <td>string</td>
              <td>{% capture md_text %}Select Practitioners with the specified name (matches against any of the elements in the HumanName data type){% endcapture %}{{ md_text | markdownify }}</td>
            </tr><tr>
              <td><a href="SearchParameter-practitioner-phonetic.html">phonetic</a></td>
              <td>Practitioner</td>
              <td>string</td>
              <td>{% capture md_text %}Select Practitioners with the specified name (A portion of name using some kind of phonetic matching algorithm){% endcapture %}{{ md_text | markdownify }}</td>
            </tr><tr>
              <td><a href="SearchParameter-practitioner-qualification-code.html">qualification-code</a></td>
              <td>Practitioner</td>
              <td>token</td>
              <td>{% capture md_text %}Select Practitioners with a type of qualification matching the specified code{% endcapture %}{{ md_text | markdownify }}</td>
            </tr><tr>
              <td><a href="SearchParameter-practitioner-qualification-issuer.html">qualification-issuer</a></td>
              <td>Practitioner</td>
              <td>reference</td>
              <td>{% capture md_text %}Select Practitioners with a qualification issued by the specified organization{% endcapture %}{{ md_text | markdownify }}</td>
            </tr><tr>
              <td><a href="SearchParameter-practitioner-qualification-wherevalid-code.html">qualification-wherevalid-code</a></td>
              <td>Practitioner</td>
              <td>token</td>
              <td>{% capture md_text %}Select Practitioners with a qualification that is valid at the location indicated by the specified code{% endcapture %}{{ md_text | markdownify }}</td>
            </tr><tr>
              <td><a href="SearchParameter-practitioner-qualification-wherevalid-location.html">qualification-wherevalid-location</a></td>
              <td>Practitioner</td>
              <td>reference</td>
              <td>{% capture md_text %}Select Practitioners with a qualification that is valid at the specified location{% endcapture %}{{ md_text | markdownify }}</td>
            </tr><tr>
              <td><a href="SearchParameter-practitionerrole-endpoint.html">endpoint</a></td>
              <td>PractitionerRole</td>
              <td>reference</td>
              <td>{% capture md_text %}Select PractitionerRoles with the specified endpoint{% endcapture %}{{ md_text | markdownify }}</td>
            </tr><tr>
              <td><a href="SearchParameter-practitionerrole-identifier-assigner.html">identifier-assigner</a></td>
              <td>PractitionerRole</td>
              <td>reference</td>
              <td>{% capture md_text %}Select PractitionerRoles with an identifier issued by the specified organization{% endcapture %}{{ md_text | markdownify }}</td>
            </tr><tr>
              <td><a href="SearchParameter-practitionerrole-identifier.html">identifier</a></td>
              <td>PractitionerRole</td>
              <td>token</td>
              <td>{% capture md_text %}Select PractitionerRoles with the specified identifier{% endcapture %}{{ md_text | markdownify }}</td>
            </tr><tr>
              <td><a href="SearchParameter-practitionerrole-location.html">location</a></td>
              <td>PractitionerRole</td>
              <td>reference</td>
              <td>{% capture md_text %}Select PractitionerRoles available at the specified location{% endcapture %}{{ md_text | markdownify }}</td>
            </tr><tr>
              <td><a href="SearchParameter-practitionerrole-network.html">network</a></td>
              <td>PractitionerRole</td>
              <td>reference</td>
              <td>{% capture md_text %}Select roles where the practitioner is a member of the specified health insurance provider network{% endcapture %}{{ md_text | markdownify }}</td>
            </tr><tr>
              <td><a href="SearchParameter-practitionerrole-new-patient-network.html">new-patient-network</a></td>
              <td>PractitionerRole</td>
              <td>reference</td>
              <td>{% capture md_text %}Select PractitionerRoles that are part of the specified network and are/are not accepting new patients{% endcapture %}{{ md_text | markdownify }}</td>
            </tr><tr>
              <td><a href="SearchParameter-practitionerrole-new-patient.html">new-patient</a></td>
              <td>PractitionerRole</td>
              <td>token</td>
              <td>{% capture md_text %}Select PractitionerRoles that are/are not accepting new patients{% endcapture %}{{ md_text | markdownify }}</td>
            </tr><tr>
              <td><a href="SearchParameter-practitionerrole-organization.html">organization</a></td>
              <td>PractitionerRole</td>
              <td>reference</td>
              <td>{% capture md_text %}Select PractitionerRoles available at the specified organization{% endcapture %}{{ md_text | markdownify }}</td>
            </tr><tr>
              <td><a href="SearchParameter-practitionerrole-practitioner.html">practitioner</a></td>
              <td>PractitionerRole</td>
              <td>reference</td>
              <td>{% capture md_text %}Select roles filled by the specified practitioner{% endcapture %}{{ md_text | markdownify }}</td>
            </tr><tr>
              <td><a href="SearchParameter-practitionerrole-qualification-code.html">qualification-code</a></td>
              <td>PractitionerRole</td>
              <td>token</td>
              <td>{% capture md_text %}Select PractitionerRoles with a type of qualification matching the specified code{% endcapture %}{{ md_text | markdownify }}</td>
            </tr><tr>
              <td><a href="SearchParameter-practitionerrole-qualification-issuer.html">qualification-issuer</a></td>
              <td>PractitionerRole</td>
              <td>reference</td>
              <td>{% capture md_text %}Select PractitionerRoles with a qualification issued by the specified organization{% endcapture %}{{ md_text | markdownify }}</td>
            </tr><tr>
              <td><a href="SearchParameter-practitionerrole-qualification-wherevalid-code.html">qualification-wherevalid-code</a></td>
              <td>PractitionerRole</td>
              <td>token</td>
              <td>{% capture md_text %}Select PractitionerRoles with a qualification that is valid at the location indicated by the specified code{% endcapture %}{{ md_text | markdownify }}</td>
            </tr><tr>
              <td><a href="SearchParameter-practitionerrole-qualification-wherevalid-location.html">qualification-wherevalid-location</a></td>
              <td>PractitionerRole</td>
              <td>reference</td>
              <td>{% capture md_text %}Select PractitionerRoles with a qualification that is valid at the specified location{% endcapture %}{{ md_text | markdownify }}</td>
            </tr><tr>
              <td><a href="SearchParameter-practitionerrole-role.html">role</a></td>
              <td>PractitionerRole</td>
              <td>token</td>
              <td>{% capture md_text %}Select PractitionerRoles with the specified role{% endcapture %}{{ md_text | markdownify }}</td>
            </tr><tr>
              <td><a href="SearchParameter-practitionerrole-service.html">service</a></td>
              <td>PractitionerRole</td>
              <td>reference</td>
              <td>{% capture md_text %}Select PractitionerRoles providing the specified service{% endcapture %}{{ md_text | markdownify }}</td>
            </tr><tr>
              <td><a href="SearchParameter-practitionerrole-specialty.html">specialty</a></td>
              <td>PractitionerRole</td>
              <td>token</td>
              <td>{% capture md_text %}Select PractitionerRoles associated with the specified specialty{% endcapture %}{{ md_text | markdownify }}</td>
            </tr>
  </tbody>
</table>
</div>