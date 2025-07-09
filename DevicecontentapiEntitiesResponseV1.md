# Falcon::DevicecontentapiEntitiesResponseV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DevicecontentState&gt;**](DevicecontentState.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DevicecontentapiEntitiesResponseV1.new(
  errors: null,
  meta: null,
  resources: null
)
```

