# Falcon::GraphCondition

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **display** | **Array&lt;String&gt;** | User friendly description of the FQL expression. This would be supplied by the UI/caller and is not set by the API. | [optional] |
| **evaluated** | **Boolean** | Indicates the boolean result of FQL expression when present. This field should be used only in the api response of a graph execution result | [optional] |
| **expression** | **String** | FQL expression for the condition on the sequence flow. | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::GraphCondition.new(
  display: null,
  evaluated: null,
  expression: null
)
```

