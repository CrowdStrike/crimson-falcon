# Falcon::DomainAggregateFailedAssetsByRulesResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;ModelsRulesWithNonCompliantAssets&gt;**](ModelsRulesWithNonCompliantAssets.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainAggregateFailedAssetsByRulesResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```

