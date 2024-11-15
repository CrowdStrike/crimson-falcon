# Falcon::V2Condition

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cel_expression** | **String** |  | [optional] |
| **display** | **Array&lt;String&gt;** |  | [optional] |
| **_else** | **Array&lt;String&gt;** |  | [optional] |
| **else_if** | **String** |  | [optional] |
| **expression** | **String** |  | [optional] |
| **_next** | **Array&lt;String&gt;** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::V2Condition.new(
  cel_expression: null,
  display: null,
  _else: null,
  else_if: null,
  expression: null,
  _next: null
)
```

