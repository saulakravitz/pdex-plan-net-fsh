

<div xmlns="http://www.w3.org/1999/xhtml" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://hl7.org/fhir ../../input-cache/schemas-r5/fhir-single.xsd">

<h3>Value Sets defined as part of this Implementation Guide.  </h3>
<p>
Where possible, value sets from the VhDIR Implementation Guide are used by reference.
</p>
<table class="codes local">
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
        <td><a href="ValueSet-EndpointUsecaseVS.html">Endpoint Usecases</a></td>
        <td>{% capture md_text %}Endpoint Usecases.{% endcapture %}{{ md_text | markdownify }}</td>
      </tr>
       <tr>
        <td><a href="ValueSet-PlanTypeVS.html">Insurance Plan Type</a></td>
        <td>{% capture md_text %}Insurance Plan Type {% endcapture %}{{ md_text | markdownify }}</td>
      </tr>
    <tr>
        <td><a href="ValueSet-OrgTypeVS.html">Organization Type</a></td>
        <td>{% capture md_text %}Organization Type.{% endcapture %}{{ md_text | markdownify }}</td>
      </tr>
    <tr>
  </tbody>
</table>

<h3>Key external value sets used in this Implementation Guide</h3>
<p>These value sets are referenced directly by Plan-Net resources.   Additional external value sets are referenced by extensions.</p>
<table class="codes external">
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
        <td><a href="http://hl7.org/fhir/uv/vhdir/2018Sep/ValueSet-valueset-qualificationstatus.html">Credential Status</a></td>
        <td>{% capture md_text %}VhDir Credential Status (physical / postal).{% endcapture %}{{ md_text | markdownify }}</td>
      </tr>
      <tr>
        <td><a href="http://hl7.org/fhir/valueset-provider-taxonomy.html">NUCC Provider Taxonomy</a></td>
        <td>{% capture md_text %}Specialty in PractitionerRole, OrganizationAffiliation and HealthcareService is coded using NUCC Provider Taxonomy.{% endcapture %}{{ md_text | markdownify }}</td>
      </tr>
            
  </tbody>
</table>

</div>