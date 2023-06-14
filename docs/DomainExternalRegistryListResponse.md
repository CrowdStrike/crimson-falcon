# Falcon::DomainExternalRegistryListResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) |  | [optional] |
| **meta** | [**MsaspecMetaInfo**](MsaspecMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DomainExternalAPIRegistry&gt;**](DomainExternalAPIRegistry.md) |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainExternalRegistryListResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```

