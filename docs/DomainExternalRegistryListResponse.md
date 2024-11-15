# Falcon::DomainExternalRegistryListResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
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

