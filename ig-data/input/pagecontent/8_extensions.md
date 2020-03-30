

<div xmlns="http://www.w3.org/1999/xhtml" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://hl7.org/fhir ../../input-cache/schemas-r5/fhir-single.xsd">

<h3>Extensions defined as part of this Implementation Guide.  Where possible, <a href="https://build.fhir.org/ig/HL7/VhDir//profiles.html#extensions">extensions</a> from the VhDIR Implementation Guide are used by reference.</h3>

<table class="codes">
  <thead>
    <tr>
      <td>
        <b>Name</b>
      </td>
      <td>
        <b>Definition</b>
      </td>
    </tr>
  </thead>
  <tbody>
        <tr>
          <td><a href="StructureDefinition-endpoint-usecase.html">Endpoint Use Case</a></td>
          <td>{% capture md_text %}An enumeration of the specific use cases (service descriptions) supported by the endpoint{% endcapture %}{{ md_text | markdownify }}</td>
        </tr>
        <tr>
          <td><a href="StructureDefinition-location-reference.html">Location -reference</a></td>
          <td>{% capture md_text %}A reference to  a Location resource (plannet-Location) defining the coverage area of a health insurance provider network{% endcapture %}{{ md_text | markdownify }}</td>
        </tr>
        <tr>
          <td><a href="StructureDefinition-network-reference.html">Network -reference</a></td>
          <td>{% capture md_text %}A reference to the healthcare provider insurance networks (plannet-Network) the practitioner participates in through their role{% endcapture %}{{ md_text | markdownify }}</td>
        </tr>
        <tr>
          <td><a href="StructureDefinition-newpatients.html">New Patients</a></td>
          <td>{% capture md_text %}New Patients indicates whether the practitioner is accepting new patients in their role{% endcapture %}{{ md_text | markdownify }}</td>
        </tr>
        <tr>
          <td><a href="StructureDefinition-via-intermediary.html">Via Intermediary</a></td>
          <td>{% capture md_text %}A reference to an alternative point of contact (plannet-PractitionerRole, plannet-Organization, plannet-OrganizationAffiliation, or plannet-Location) {% endcapture %}{{ md_text | markdownify }}</td>
        </tr>
        
  </tbody>
</table>
</div>