# Falcon::ExecutionsActivityExecutionResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **end_timestamp** | **Time** | Timestamp of when the execution completed. Only present when status is an end state. | [optional] |
| **error_code** | **Integer** | When a node execution is in an error status this field is present and provides an error code that can be used to determine details why the failure occurred. | [optional] |
| **error_message** | **String** | When a node execution is in an error status this field is present and provides a user friendly error message. | [optional] |
| **id** | **String** | The unique identifier of the selected activity that is being configured. |  |
| **mocked** | **Boolean** | Whether this node&#39;s result is mocked | [optional] |
| **name** | **String** | Optional user provided name for the activity, if not specified a default of the name for that activity will be used. |  |
| **node_id** | **String** | Unique id of the node as specified in the definition. |  |
| **references** | [**Array&lt;ExecutionsReferenceLink&gt;**](ExecutionsReferenceLink.md) | A set of objects which provide references to other URLs related to the activity execution. | [optional] |
| **result** | **Object** | Result fields of activity execution. | [optional] |
| **start_timestamp** | **Time** | Timestamp of when the execution first started. |  |
| **status** | **String** | Current status of execution for the activity. |  |
| **type** | **String** | Root element of the execution route of the activity |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ExecutionsActivityExecutionResult.new(
  end_timestamp: null,
  error_code: null,
  error_message: null,
  id: null,
  mocked: null,
  name: null,
  node_id: null,
  references: null,
  result: null,
  start_timestamp: null,
  status: null,
  type: null
)
```

