# Falcon::CsdomainMappedDevicePolicies

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **airlock** | [**CsdomainDevicePolicy**](CsdomainDevicePolicy.md) |  | [optional] |
| **automox** | [**CsdomainDevicePolicy**](CsdomainDevicePolicy.md) |  | [optional] |
| **device_control** | [**CsdomainDevicePolicy**](CsdomainDevicePolicy.md) |  | [optional] |
| **firewall** | [**CsdomainDevicePolicy**](CsdomainDevicePolicy.md) |  | [optional] |
| **global_config** | [**CsdomainDevicePolicy**](CsdomainDevicePolicy.md) |  | [optional] |
| **netskope** | [**CsdomainDevicePolicy**](CsdomainDevicePolicy.md) |  | [optional] |
| **prevention** | [**CsdomainDevicePolicy**](CsdomainDevicePolicy.md) |  | [optional] |
| **remote_response** | [**CsdomainDevicePolicy**](CsdomainDevicePolicy.md) |  | [optional] |
| **sensor_update** | [**CsdomainDevicePolicy**](CsdomainDevicePolicy.md) |  | [optional] |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::CsdomainMappedDevicePolicies.new(
  airlock: null,
  automox: null,
  device_control: null,
  firewall: null,
  global_config: null,
  netskope: null,
  prevention: null,
  remote_response: null,
  sensor_update: null
)
```

