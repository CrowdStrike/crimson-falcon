# Falcon::TypesCreateIntegrationResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **integration** | [**TypesCreateIntegration**](TypesCreateIntegration.md) |  | [optional] |
| **new_executor_node** | [**TypesCreateExecutorNode**](TypesCreateExecutorNode.md) |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::TypesCreateIntegrationResponse.new(
  integration: null,
  new_executor_node: null
)
```

