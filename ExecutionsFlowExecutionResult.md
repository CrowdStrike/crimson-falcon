# Falcon::ExecutionsFlowExecutionResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **condition** | [**ExecutionsConditionResult**](ExecutionsConditionResult.md) |  | [optional] |
| **end_timestamp** | **Time** | Timestamp of when the execution completed. Only present when status is an end state. | [optional] |
| **error_code** | **Integer** | When a node execution is in an error status this field is present and provides an error code that can be used to determine details why the failure occurred. | [optional] |
| **error_message** | **String** | When a node execution is in an error status this field is present and provides a user friendly error message. | [optional] |
| **mocked** | **Boolean** | Whether this node&#39;s result is mocked | [optional] |
| **node_id** | **String** | Unique id of the node as specified in the definition. |  |
| **start_timestamp** | **Time** | Timestamp of when the execution first started. |  |
| **status** | **String** | Current status of execution for the activity. |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ExecutionsFlowExecutionResult.new(
  condition: null,
  end_timestamp: null,
  error_code: null,
  error_message: null,
  mocked: null,
  node_id: null,
  start_timestamp: null,
  status: null
)
```

