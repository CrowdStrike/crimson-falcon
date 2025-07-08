# Falcon::DomainAggregatesResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) | Array of API Errors |  |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DomainAggregationResult&gt;**](DomainAggregationResult.md) | Array of aggregation results, 1 per AggregateQueryRequest |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainAggregatesResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```

