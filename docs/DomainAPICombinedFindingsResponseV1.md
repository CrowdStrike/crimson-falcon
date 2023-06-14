# Falcon::DomainAPICombinedFindingsResponseV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) |  | [optional] |
| **meta** | [**DomainAPIQueryMetaV1**](DomainAPIQueryMetaV1.md) |  |  |
| **resources** | [**Array&lt;DomainAPIFindingFacetV1&gt;**](DomainAPIFindingFacetV1.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainAPICombinedFindingsResponseV1.new(
  errors: null,
  meta: null,
  resources: null
)
```

