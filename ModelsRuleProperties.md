# Falcon::ModelsRuleProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cvss_attack_complexity** | **String** |  |  |
| **cvss_attack_vector** | **String** |  |  |
| **cvss_availability_impact** | **String** |  |  |
| **cvss_base_score** | **Float** |  |  |
| **cvss_confidentiality_impact** | **String** |  |  |
| **cvss_exploitability_score** | **Float** |  |  |
| **cvss_impact_score** | **Float** |  |  |
| **cvss_integrity_impact** | **String** |  |  |
| **cvss_privileges_required** | **String** |  |  |
| **cvss_scope** | **String** |  |  |
| **cvss_source** | **String** |  |  |
| **cvss_user_interaction** | **String** |  |  |
| **cvss_vector** | **String** |  |  |
| **description** | **String** |  |  |
| **exploit_date_recorded_timestamp** | **Integer** |  |  |
| **exploit_sources** | [**Array&lt;IngestionCVEExploitSource&gt;**](IngestionCVEExploitSource.md) |  |  |
| **exploit_status** | **String** |  |  |
| **exploit_updated_timestamp** | **Integer** |  |  |
| **exprt_rating** | **String** |  |  |
| **exprt_rating_date_recorded_timestamp** | **Integer** |  |  |
| **exprt_rating_highest** | **String** |  |  |
| **exprt_rating_highest_recorded_timestamp** | **Integer** |  |  |
| **first_seen_timestamp** | **Integer** |  |  |
| **references** | [**Array&lt;IngestionReference&gt;**](IngestionReference.md) |  |  |
| **remediation_count** | **Integer** |  |  |
| **remediation_sources** | **Array&lt;String&gt;** |  |  |
| **remediations** | **Array&lt;String&gt;** |  |  |
| **runtime** | **String** |  |  |
| **scanner_version** | **String** |  |  |
| **severity** | **String** |  |  |
| **top_exprt_rating_factors** | [**Array&lt;IngestionExPRTRatingFactors&gt;**](IngestionExPRTRatingFactors.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ModelsRuleProperties.new(
  cvss_attack_complexity: null,
  cvss_attack_vector: null,
  cvss_availability_impact: null,
  cvss_base_score: null,
  cvss_confidentiality_impact: null,
  cvss_exploitability_score: null,
  cvss_impact_score: null,
  cvss_integrity_impact: null,
  cvss_privileges_required: null,
  cvss_scope: null,
  cvss_source: null,
  cvss_user_interaction: null,
  cvss_vector: null,
  description: null,
  exploit_date_recorded_timestamp: null,
  exploit_sources: null,
  exploit_status: null,
  exploit_updated_timestamp: null,
  exprt_rating: null,
  exprt_rating_date_recorded_timestamp: null,
  exprt_rating_highest: null,
  exprt_rating_highest_recorded_timestamp: null,
  first_seen_timestamp: null,
  references: null,
  remediation_count: null,
  remediation_sources: null,
  remediations: null,
  runtime: null,
  scanner_version: null,
  severity: null,
  top_exprt_rating_factors: null
)
```

