# Falcon::DevicecontentState

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cid** | **String** |  |  |
| **device_id** | **String** |  |  |
| **groups** | **Array&lt;String&gt;** |  | [optional] |
| **hidden_status** | **String** |  | [optional] |
| **hostname** | **String** |  | [optional] |
| **last_seen** | **String** |  | [optional] |
| **platform_name** | **String** |  | [optional] |
| **rapid_response_content** | [**DevicecontentContentCategory**](DevicecontentContentCategory.md) |  | [optional] |
| **reduced_functionality_mode** | **String** |  | [optional] |
| **sensor_operations** | [**DevicecontentContentCategory**](DevicecontentContentCategory.md) |  | [optional] |
| **system_critical** | [**DevicecontentContentCategory**](DevicecontentContentCategory.md) |  | [optional] |
| **vulnerability_management** | [**DevicecontentContentCategory**](DevicecontentContentCategory.md) |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DevicecontentState.new(
  cid: null,
  device_id: null,
  groups: null,
  hidden_status: null,
  hostname: null,
  last_seen: null,
  platform_name: null,
  rapid_response_content: null,
  reduced_functionality_mode: null,
  sensor_operations: null,
  system_critical: null,
  vulnerability_management: null
)
```

