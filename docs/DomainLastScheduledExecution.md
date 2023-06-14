# Falcon::DomainLastScheduledExecution

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **search_window_end** | **Time** |  | [optional] |
| **search_window_start** | **Time** |  | [optional] |
| **status_display** | **String** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainLastScheduledExecution.new(
  id: null,
  search_window_end: null,
  search_window_start: null,
  status_display: null
)
```

