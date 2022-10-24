# Falcon::DeviceapiGroupResponseV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **assignment_rule** | **String** |  | [optional] |
| **cid** | **String** |  |  |
| **created_by** | **String** |  |  |
| **created_timestamp** | **Time** |  |  |
| **description** | **String** |  |  |
| **group_type** | **String** |  |  |
| **id** | **String** |  |  |
| **meta** | [**DeviceapiGroupMeta**](DeviceapiGroupMeta.md) |  | [optional] |
| **modified_by** | **String** |  |  |
| **modified_timestamp** | **Time** |  |  |
| **name** | **String** |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::DeviceapiGroupResponseV1.new(
  assignment_rule: null,
  cid: null,
  created_by: null,
  created_timestamp: null,
  description: null,
  group_type: null,
  id: null,
  meta: null,
  modified_by: null,
  modified_timestamp: null,
  name: null
)
```

