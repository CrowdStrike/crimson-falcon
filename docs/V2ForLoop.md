# Falcon::V2ForLoop

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **condition** | **String** |  | [optional] |
| **condition_display** | **Array&lt;String&gt;** |  | [optional] |
| **continue_on_partial_execution** | **Boolean** |  |  |
| **input** | **String** |  |  |
| **max_execution_seconds** | **Integer** |  | [optional] |
| **max_iteration_count** | **Integer** |  | [optional] |
| **sequential** | **Boolean** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::V2ForLoop.new(
  condition: null,
  condition_display: null,
  continue_on_partial_execution: null,
  input: null,
  max_execution_seconds: null,
  max_iteration_count: null,
  sequential: null
)
```

