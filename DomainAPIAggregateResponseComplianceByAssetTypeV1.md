# Falcon::DomainAPIAggregateResponseComplianceByAssetTypeV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DomainAPIAggregateResponseComplianceByAssetTypeV1Resources&gt;**](DomainAPIAggregateResponseComplianceByAssetTypeV1Resources.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainAPIAggregateResponseComplianceByAssetTypeV1.new(
  errors: null,
  meta: null,
  resources: null
)
```

