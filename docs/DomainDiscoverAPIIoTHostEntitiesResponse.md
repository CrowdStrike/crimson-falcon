# Falcon::DomainDiscoverAPIIoTHostEntitiesResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) |  | [optional] |
| **meta** | [**MsaspecMetaInfo**](MsaspecMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DomainDiscoverAPIIoTHost&gt;**](DomainDiscoverAPIIoTHost.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainDiscoverAPIIoTHostEntitiesResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```

