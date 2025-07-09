# Falcon::ApiEvent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action** | **String** |  | [optional] |
| **ids** | **Array&lt;String&gt;** |  | [optional] |
| **reason** | **String** |  | [optional] |
| **time** | **Time** |  |  |
| **user** | **String** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ApiEvent.new(
  action: null,
  ids: null,
  reason: null,
  time: null,
  user: null
)
```

