# Falcon::DeviceMappedDevicePolicies

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **airlock** | [**DeviceDevicePolicy**](DeviceDevicePolicy.md) |  | [optional] |
| **automox** | [**DeviceDevicePolicy**](DeviceDevicePolicy.md) |  | [optional] |
| **aws_verified_access** | [**DeviceDevicePolicy**](DeviceDevicePolicy.md) |  | [optional] |
| **data_protection** | [**DeviceDevicePolicy**](DeviceDevicePolicy.md) |  | [optional] |
| **device_control** | [**DeviceDevicePolicy**](DeviceDevicePolicy.md) |  | [optional] |
| **fim** | [**DeviceDevicePolicy**](DeviceDevicePolicy.md) |  | [optional] |
| **firewall** | [**DeviceDevicePolicy**](DeviceDevicePolicy.md) |  | [optional] |
| **global_config** | [**DeviceDevicePolicy**](DeviceDevicePolicy.md) |  | [optional] |
| **host_retention** | [**DeviceDevicePolicy**](DeviceDevicePolicy.md) |  | [optional] |
| **identity_protection** | [**DeviceDevicePolicy**](DeviceDevicePolicy.md) |  | [optional] |
| **jumpcloud** | [**DeviceDevicePolicy**](DeviceDevicePolicy.md) |  | [optional] |
| **kubernetes_admission_control** | [**DeviceDevicePolicy**](DeviceDevicePolicy.md) |  | [optional] |
| **mobile** | [**DeviceDevicePolicy**](DeviceDevicePolicy.md) |  | [optional] |
| **netskope** | [**DeviceDevicePolicy**](DeviceDevicePolicy.md) |  | [optional] |
| **prevention** | [**DeviceDevicePolicy**](DeviceDevicePolicy.md) |  | [optional] |
| **remote_response** | [**DeviceDevicePolicy**](DeviceDevicePolicy.md) |  | [optional] |
| **sca** | [**DeviceDevicePolicy**](DeviceDevicePolicy.md) |  | [optional] |
| **sensor_update** | [**DeviceDevicePolicy**](DeviceDevicePolicy.md) |  | [optional] |
| **system_tray** | [**DeviceDevicePolicy**](DeviceDevicePolicy.md) |  | [optional] |
| **ztl** | [**DeviceDevicePolicy**](DeviceDevicePolicy.md) |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DeviceMappedDevicePolicies.new(
  airlock: null,
  automox: null,
  aws_verified_access: null,
  data_protection: null,
  device_control: null,
  fim: null,
  firewall: null,
  global_config: null,
  host_retention: null,
  identity_protection: null,
  jumpcloud: null,
  kubernetes_admission_control: null,
  mobile: null,
  netskope: null,
  prevention: null,
  remote_response: null,
  sca: null,
  sensor_update: null,
  system_tray: null,
  ztl: null
)
```

