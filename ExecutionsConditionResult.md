# Falcon::ExecutionsConditionResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cel_expression** | **String** | CEL expression for the condition. | [optional] |
| **display** | **Array&lt;String&gt;** | User friendly description of the expression. | [optional] |
| **expression** | **String** | FQL expression for the condition. | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ExecutionsConditionResult.new(
  cel_expression: null,
  display: null,
  expression: null
)
```

