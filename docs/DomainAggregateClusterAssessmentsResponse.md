# Falcon::DomainAggregateClusterAssessmentsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;ModelsComplianceExportGroupedByClustersReport&gt;**](ModelsComplianceExportGroupedByClustersReport.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainAggregateClusterAssessmentsResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```

