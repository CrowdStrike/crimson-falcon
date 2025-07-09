# Falcon::DomainAPIAggregateResponseComplianceByClusterTypeV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DomainAPIAggregateResponseComplianceByClusterTypeV1Resources&gt;**](DomainAPIAggregateResponseComplianceByClusterTypeV1Resources.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainAPIAggregateResponseComplianceByClusterTypeV1.new(
  errors: null,
  meta: null,
  resources: null
)
```

