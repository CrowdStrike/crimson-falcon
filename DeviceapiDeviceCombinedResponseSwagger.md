# Falcon::DeviceapiDeviceCombinedResponseSwagger

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **meta** | [**DeviceapiMetaInfo**](DeviceapiMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DeviceapiDeviceSwagger&gt;**](DeviceapiDeviceSwagger.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DeviceapiDeviceCombinedResponseSwagger.new(
  errors: null,
  meta: null,
  resources: null
)
```

