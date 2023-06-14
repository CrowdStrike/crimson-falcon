# Falcon::DeviceapiDeviceResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) |  |  |
| **meta** | [**DeviceapiRequestMeta**](DeviceapiRequestMeta.md) |  |  |
| **resources** | **Array&lt;String&gt;** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DeviceapiDeviceResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```

