# Falcon::TypesIntegrationTaskResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **integration_task** | [**TypesIntegrationTask**](TypesIntegrationTask.md) |  | [optional] |
| **new_executor_node** | [**TypesExecutorNode**](TypesExecutorNode.md) |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::TypesIntegrationTaskResponse.new(
  integration_task: null,
  new_executor_node: null
)
```

