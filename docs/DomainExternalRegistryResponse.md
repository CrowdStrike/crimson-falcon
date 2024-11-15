# Falcon::DomainExternalRegistryResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**DomainExternalAPIRegistry**](DomainExternalAPIRegistry.md) |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainExternalRegistryResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```

