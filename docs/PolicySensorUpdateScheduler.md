# Falcon::PolicySensorUpdateScheduler

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** |  |  |
| **schedules** | [**Array&lt;PolicySensorUpdateSchedule&gt;**](PolicySensorUpdateSchedule.md) |  |  |
| **timezone** | **String** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::PolicySensorUpdateScheduler.new(
  enabled: null,
  schedules: null,
  timezone: null
)
```

