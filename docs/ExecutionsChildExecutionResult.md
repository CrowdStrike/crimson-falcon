# Falcon::ExecutionsChildExecutionResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **end_timestamp** | **Time** | Timestamp of when the execution completed. Only present when status is an end state. | [optional] |
| **id** | **String** | Unique id of the child execution id. |  |
| **iteration** | **Integer** | Index number indicating what iteration of the parent execution this given execution is associated with. |  |
| **start_timestamp** | **Time** | Timestamp of when the execution first started. |  |
| **status** | **String** | Current status of execution. |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ExecutionsChildExecutionResult.new(
  end_timestamp: null,
  id: null,
  iteration: null,
  start_timestamp: null,
  status: null
)
```

