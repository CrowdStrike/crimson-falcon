# Falcon::DomainSPAPIQueryResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**DomainSPAPIQueryMeta**](DomainSPAPIQueryMeta.md) |  |  |
| **resources** | **Array&lt;String&gt;** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainSPAPIQueryResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```

