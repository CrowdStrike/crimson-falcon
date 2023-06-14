# Falcon::DomainExternalRegistryResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) |  | [optional] |
| **meta** | [**MsaspecMetaInfo**](MsaspecMetaInfo.md) |  |  |
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

