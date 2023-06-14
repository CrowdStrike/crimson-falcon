# Falcon::DomainDiscoverAPIHostEntitiesResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) |  | [optional] |
| **meta** | [**MsaspecMetaInfo**](MsaspecMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DomainDiscoverAPIHost&gt;**](DomainDiscoverAPIHost.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainDiscoverAPIHostEntitiesResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```

