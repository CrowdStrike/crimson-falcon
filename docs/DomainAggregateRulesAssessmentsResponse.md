# Falcon::DomainAggregateRulesAssessmentsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;ModelsComplianceExportGroupedByRulesReport&gt;**](ModelsComplianceExportGroupedByRulesReport.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainAggregateRulesAssessmentsResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```

