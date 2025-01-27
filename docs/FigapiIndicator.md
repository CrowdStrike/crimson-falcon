# Falcon::FigapiIndicator

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **adversaries** | [**Array&lt;FigapiAdversary&gt;**](FigapiAdversary.md) |  | [optional] |
| **certificates** | [**Array&lt;FigapiX509Certificate&gt;**](FigapiX509Certificate.md) |  | [optional] |
| **countries** | [**Array&lt;FigapiCountry&gt;**](FigapiCountry.md) |  | [optional] |
| **domain_details** | [**FigapiDomain**](FigapiDomain.md) |  | [optional] |
| **file_details** | [**FigapiFile**](FigapiFile.md) |  | [optional] |
| **first_seen** | **String** | Indicators first seen | [optional] |
| **id** | **String** | The indicator ID. Concatenation of type and indicator fields. Based on the CKB2 vertex ID. | [optional] |
| **ipv4_details** | [**FigapiIPv4**](FigapiIPv4.md) |  | [optional] |
| **ipv6_details** | [**FigapiIPv6**](FigapiIPv6.md) |  | [optional] |
| **kill_chain** | **Array&lt;String&gt;** | Multi field property describing indicators kill-chain, possible properties: &#x60;ActionOnObjectives&#x60;, &#x60;C2&#x60;, &#x60;Delivery&#x60;, &#x60;Exploitation&#x60;, &#x60;Installation&#x60;, &#x60;Reconnaissance&#x60;, &#x60;Weaponization&#x60; | [optional] |
| **last_seen** | **String** | Indicators last seen | [optional] |
| **last_updated** | **String** |  | [optional] |
| **malicious_confidence** | **String** | Indicates a confidence level by which an indicator is considered to be malicious, this can be one of: &#x60;Low&#x60;, &#x60;Medium&#x60;, &#x60;High&#x60; | [optional] |
| **malicious_confidence_validated_time** | **String** | Indicates when was the confidence was last set | [optional] |
| **publish_date** | **String** |  | [optional] |
| **reports** | [**Array&lt;FigapiReport&gt;**](FigapiReport.md) |  | [optional] |
| **sectors** | [**Array&lt;FigapiSector&gt;**](FigapiSector.md) |  | [optional] |
| **threat_types** | **Array&lt;String&gt;** |  | [optional] |
| **threats** | [**Array&lt;FigapiThreat&gt;**](FigapiThreat.md) |  | [optional] |
| **type** | **String** | Type of the indicator, this can be one of: &#x60;File&#x60;, &#x60;Domain&#x60;, &#x60;IPv4&#x60;, &#x60;IPv6&#x60;, &#x60;URL&#x60; | [optional] |
| **url_details** | [**FigapiURL**](FigapiURL.md) |  | [optional] |
| **victimology** | **String** | TBD | [optional] |
| **vulnerabilities** | [**Array&lt;FigapiVulnerability&gt;**](FigapiVulnerability.md) |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::FigapiIndicator.new(
  adversaries: null,
  certificates: null,
  countries: null,
  domain_details: null,
  file_details: null,
  first_seen: null,
  id: null,
  ipv4_details: null,
  ipv6_details: null,
  kill_chain: null,
  last_seen: null,
  last_updated: null,
  malicious_confidence: null,
  malicious_confidence_validated_time: null,
  publish_date: null,
  reports: null,
  sectors: null,
  threat_types: null,
  threats: null,
  type: null,
  url_details: null,
  victimology: null,
  vulnerabilities: null
)
```

