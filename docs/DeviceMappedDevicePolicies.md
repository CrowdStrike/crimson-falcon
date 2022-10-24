# Falcon::DeviceMappedDevicePolicies

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **airlock** | [**DeviceDevicePolicy**](DeviceDevicePolicy.md) |  | [optional] |
| **automox** | [**DeviceDevicePolicy**](DeviceDevicePolicy.md) |  | [optional] |
| **device_control** | [**DeviceDevicePolicy**](DeviceDevicePolicy.md) |  | [optional] |
| **fim** | [**DeviceDevicePolicy**](DeviceDevicePolicy.md) |  | [optional] |
| **firewall** | [**DeviceDevicePolicy**](DeviceDevicePolicy.md) |  | [optional] |
| **global_config** | [**DeviceDevicePolicy**](DeviceDevicePolicy.md) |  | [optional] |
| **identity_protection** | [**DeviceDevicePolicy**](DeviceDevicePolicy.md) |  | [optional] |
| **jumpcloud** | [**DeviceDevicePolicy**](DeviceDevicePolicy.md) |  | [optional] |
| **mobile** | [**DeviceDevicePolicy**](DeviceDevicePolicy.md) |  | [optional] |
| **netskope** | [**DeviceDevicePolicy**](DeviceDevicePolicy.md) |  | [optional] |
| **prevention** | [**DeviceDevicePolicy**](DeviceDevicePolicy.md) |  | [optional] |
| **remote_response** | [**DeviceDevicePolicy**](DeviceDevicePolicy.md) |  | [optional] |
| **sensor_update** | [**DeviceDevicePolicy**](DeviceDevicePolicy.md) |  | [optional] |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::DeviceMappedDevicePolicies.new(
  airlock: null,
  automox: null,
  device_control: null,
  fim: null,
  firewall: null,
  global_config: null,
  identity_protection: null,
  jumpcloud: null,
  mobile: null,
  netskope: null,
  prevention: null,
  remote_response: null,
  sensor_update: null
)
```

