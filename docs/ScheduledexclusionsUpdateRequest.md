# Falcon::ScheduledexclusionsUpdateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** |  | [optional] |
| **id** | **String** |  |  |
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

instance = Falcon::ScheduledexclusionsUpdateRequest.new(
  description: null,
  id: null,
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

