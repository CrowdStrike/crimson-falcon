# Falcon::GraphCondition

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cel_expression** | **String** | CEL expression for the condition, should evaluate to a boolean. | [optional] |
| **display** | **Array&lt;String&gt;** | User friendly description of the expression. This is generally supplied by the UI/caller. | [optional] |
| **expression** | **String** | FQL expression for the condition on the sequence flow. | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::GraphCondition.new(
  cel_expression: null,
  display: null,
  expression: null
)
```

