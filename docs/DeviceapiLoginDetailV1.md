# Falcon::DeviceapiLoginDetailV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **device_id** | **String** |  |  |
| **recent_logins** | [**Array&lt;DeviceapiLoginInfoV1&gt;**](DeviceapiLoginInfoV1.md) |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::DeviceapiLoginDetailV1.new(
  device_id: null,
  recent_logins: null
)
```

