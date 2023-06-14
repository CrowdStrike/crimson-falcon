# Falcon::DomainDiscoverAPILoginEntitiesResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) |  | [optional] |
| **meta** | [**MsaspecMetaInfo**](MsaspecMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DomainDiscoverAPILogin&gt;**](DomainDiscoverAPILogin.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainDiscoverAPILoginEntitiesResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```

