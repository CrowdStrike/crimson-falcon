# Falcon::ScheduledexclusionsScheduledExclusion

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created_timestamp** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **id** | **String** |  |  |
| **modified_timestamp** | **String** |  | [optional] |
| **name** | **String** |  |  |
| **policy_id** | **String** |  | [optional] |
| **processes** | **String** |  | [optional] |
| **repeated** | [**ScheduledexclusionsRepeated**](ScheduledexclusionsRepeated.md) |  | [optional] |
| **schedule_end** | **String** |  | [optional] |
| **schedule_start** | **String** |  | [optional] |
| **timezone** | **String** |  |  |
| **users** | **String** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ScheduledexclusionsScheduledExclusion.new(
  created_timestamp: null,
  description: null,
  id: null,
  modified_timestamp: null,
  name: null,
  policy_id: null,
  processes: null,
  repeated: null,
  schedule_end: null,
  schedule_start: null,
  timezone: null,
  users: null
)
```

