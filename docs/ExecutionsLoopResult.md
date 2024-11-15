# Falcon::ExecutionsLoopResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **child_executions** | [**Array&lt;ExecutionsChildExecutionResult&gt;**](ExecutionsChildExecutionResult.md) | Details of all child executions associated with the loop. A child execution is generated for each iteration of the input data. |  |
| **end_timestamp** | **Time** | Timestamp of when the execution completed. Only present when status is an end state. | [optional] |
| **error_code** | **Integer** | When a node execution is in an error status this field is present and provides an error code that can be used to determine details why the failure occurred. | [optional] |
| **error_message** | **String** | When a node execution is in an error status this field is present and provides a user friendly error message. | [optional] |
| **input_field** | **String** | Display name of the input field that the sub model is iterating over. |  |
| **iterations** | [**ExecutionsIterations**](ExecutionsIterations.md) |  |  |
| **mocked** | **Boolean** | Whether this node&#39;s result is mocked | [optional] |
| **node_id** | **String** | Unique id of the node as specified in the definition. |  |
| **outputs** | **Array&lt;Object&gt;** | Outputs from all the iterations of the sub model | [optional] |
| **start_timestamp** | **Time** | Timestamp of when the execution first started. |  |
| **status** | **String** | Current status of execution for the activity. |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ExecutionsLoopResult.new(
  child_executions: null,
  end_timestamp: null,
  error_code: null,
  error_message: null,
  input_field: null,
  iterations: null,
  mocked: null,
  node_id: null,
  outputs: null,
  start_timestamp: null,
  status: null
)
```

