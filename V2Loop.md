# Falcon::V2Loop

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **actions** | [**Hash&lt;String, V2Activity&gt;**](V2Activity.md) |  | [optional] |
| **conditions** | [**Hash&lt;String, V2Condition&gt;**](V2Condition.md) |  | [optional] |
| **display** | **String** |  | [optional] |
| **_for** | [**V2ForLoop**](V2ForLoop.md) |  |  |
| **_next** | **Array&lt;String&gt;** |  | [optional] |
| **trigger** | [**V2Trigger**](V2Trigger.md) |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::V2Loop.new(
  actions: null,
  conditions: null,
  display: null,
  _for: null,
  _next: null,
  trigger: null
)
```

