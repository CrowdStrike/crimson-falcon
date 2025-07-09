# Falcon::DomainAggregateFailedAssetCountBySeverityResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;ModelsNonCompliantAssetsBySeverity&gt;**](ModelsNonCompliantAssetsBySeverity.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainAggregateFailedAssetCountBySeverityResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```

