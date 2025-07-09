# Falcon::ApiQueryJobAroundInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_id** | **String** |  |  |
| **number_of_events_after** | **Integer** |  |  |
| **number_of_events_before** | **Integer** |  |  |
| **timestamp** | **Integer** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ApiQueryJobAroundInput.new(
  event_id: null,
  number_of_events_after: null,
  number_of_events_before: null,
  timestamp: null
)
```

