# Falcon::DomainAggregatesResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;DomainReconAPIError&gt;**](DomainReconAPIError.md) |  |  |
| **meta** | [**MsaspecMetaInfo**](MsaspecMetaInfo.md) |  |  |
| **resources** | [**Array&lt;MsaAggregationResult&gt;**](MsaAggregationResult.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainAggregatesResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```

