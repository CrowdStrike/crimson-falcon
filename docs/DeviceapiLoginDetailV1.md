# Falcon::DeviceapiLoginDetailV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cid** | **String** |  |  |
| **device_id** | **String** |  |  |
| **recent_logins** | [**Array&lt;DeviceapiLoginInfoV1&gt;**](DeviceapiLoginInfoV1.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DeviceapiLoginDetailV1.new(
  cid: null,
  device_id: null,
  recent_logins: null
)
```

