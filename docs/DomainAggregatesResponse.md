# Falcon::DomainAggregatesResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;DomainReconAPIError&gt;**](DomainReconAPIError.md) |  |  |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;MsaAggregationResult&gt;**](MsaAggregationResult.md) |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::DomainAggregatesResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```

