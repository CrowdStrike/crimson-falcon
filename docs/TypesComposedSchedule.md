# Falcon::TypesComposedSchedule

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **every** | **Integer** |  | [optional] |
| **every_unit** | **Integer** |  | [optional] |
| **hour** | **Integer** |  | [optional] |
| **minute** | **Integer** |  | [optional] |
| **start_time_timezone_offset_minutes** | **Integer** |  | [optional] |
| **start_time** | [**TypesTimestamp**](TypesTimestamp.md) |  | [optional] |
| **timezone** | **Integer** |  | [optional] |
| **weekdays** | **Array&lt;Integer&gt;** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::TypesComposedSchedule.new(
  every: null,
  every_unit: null,
  hour: null,
  minute: null,
  start_time_timezone_offset_minutes: null,
  start_time: null,
  timezone: null,
  weekdays: null
)
```

