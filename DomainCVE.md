# Falcon::DomainCVE

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **actors** | **Array&lt;String&gt;** |  |  |
| **additional_info** | **String** |  | [optional] |
| **base_score** | **Float** |  |  |
| **cisa_kev_info** | [**DomainCISAKnownExploitedVulnerabilitiesInfo**](DomainCISAKnownExploitedVulnerabilitiesInfo.md) |  |  |
| **content_packages** | [**Array&lt;DomainContentPackage&gt;**](DomainContentPackage.md) |  | [optional] |
| **cps_rating** | [**DomainCPSRating**](DomainCPSRating.md) |  |  |
| **cvss_v2_score** | [**DomainCVSSv2**](DomainCVSSv2.md) |  | [optional] |
| **cvss_v3_score** | [**DomainCVSSv3**](DomainCVSSv3.md) |  | [optional] |
| **cvss_version** | **String** |  |  |
| **description** | **String** |  | [optional] |
| **exploitability_score** | **Float** |  | [optional] |
| **exploited** | [**DomainCVEExploit**](DomainCVEExploit.md) |  | [optional] |
| **id** | **String** |  |  |
| **impact_score** | **Float** |  | [optional] |
| **is_supported** | **Boolean** |  |  |
| **metadata_hash** | **Integer** |  |  |
| **name** | **String** |  |  |
| **published_date** | **Time** |  |  |
| **references** | [**Array&lt;DomainReference&gt;**](DomainReference.md) |  |  |
| **severity** | **String** |  |  |
| **source** | **String** |  |  |
| **source_type** | **String** |  |  |
| **spotlight_published_date** | **Time** |  |  |
| **types** | **Array&lt;String&gt;** |  |  |
| **vector** | **String** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainCVE.new(
  actors: null,
  additional_info: null,
  base_score: null,
  cisa_kev_info: null,
  content_packages: null,
  cps_rating: null,
  cvss_v2_score: null,
  cvss_v3_score: null,
  cvss_version: null,
  description: null,
  exploitability_score: null,
  exploited: null,
  id: null,
  impact_score: null,
  is_supported: null,
  metadata_hash: null,
  name: null,
  published_date: null,
  references: null,
  severity: null,
  source: null,
  source_type: null,
  spotlight_published_date: null,
  types: null,
  vector: null
)
```

