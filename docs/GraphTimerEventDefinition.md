# Falcon::GraphTimerEventDefinition

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **end_date** | **String** | End date in mm-dd-yyyy format | [optional] |
| **skip_concurrent** | **Boolean** | Flag indicating if concurrent execution of scheduled workflow should be skipped or not |  |
| **start_date** | **String** | Start date in mm-dd-yyyy format | [optional] |
| **time_cycle** | **String** | A time cycle element specifies repeating intervals, and can be specified using using cron expressions. |  |
| **tz** | **String** | Timezone label from IANA timezone database, for example, America/Los_Angeles |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::GraphTimerEventDefinition.new(
  end_date: null,
  skip_concurrent: null,
  start_date: null,
  time_cycle: null,
  tz: null
)
```

