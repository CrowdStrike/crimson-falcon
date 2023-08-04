# Falcon::InternalSensorStatus

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **agent_version** | **String** |  | [optional] |
| **cid** | **String** |  |  |
| **device_id** | **String** |  |  |
| **hostname** | **String** |  | [optional] |
| **idp_policy_id** | **String** |  | [optional] |
| **idp_policy_name** | **String** |  | [optional] |
| **local_ip** | **String** |  | [optional] |
| **machine_domain** | **String** |  | [optional] |
| **os_version** | **String** |  | [optional] |
| **ti_enabled** | **String** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::InternalSensorStatus.new(
  agent_version: null,
  cid: null,
  device_id: null,
  hostname: null,
  idp_policy_id: null,
  idp_policy_name: null,
  local_ip: null,
  machine_domain: null,
  os_version: null,
  ti_enabled: null
)
```

