# Falcon::DomainDiscoverAPIIoTHostEntitiesResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
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

