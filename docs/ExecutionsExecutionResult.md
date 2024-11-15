# Falcon::ExecutionsExecutionResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **activities** | [**Array&lt;ExecutionsActivityExecutionResult&gt;**](ExecutionsActivityExecutionResult.md) | Details for the result of each activity node. |  |
| **ancestor_executions** | [**Array&lt;ExecutionsAncestorExecution&gt;**](ExecutionsAncestorExecution.md) | Populated when the execution origin is from a sub model. |  |
| **definition_id** | **String** | Unique id of the workflow the execution is associated with. |  |
| **definition_version** | **Integer** | Version of the definition that executed. |  |
| **end_timestamp** | **Time** | Timestamp of when the execution completed. Only present when status is an end state. | [optional] |
| **execution_id** | **String** | Unique id generated for the execution. |  |
| **loops** | [**Array&lt;ExecutionsLoopResult&gt;**](ExecutionsLoopResult.md) | Details for the results of each loop in the workflow definition. |  |
| **output_data** | **Object** | Output from this workflow execution | [optional] |
| **retryable** | **Boolean** | A boolean value indicating whether the failed workflow execution is retryable |  |
| **start_timestamp** | **Time** | Timestamp of when the execution first started. |  |
| **status** | **String** | Overall status for the execution. |  |
| **summary** | **String** | Execution summary if defined in the workflow definition | [optional] |
| **trigger** | [**ExecutionsTriggerResult**](ExecutionsTriggerResult.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ExecutionsExecutionResult.new(
  activities: null,
  ancestor_executions: null,
  definition_id: null,
  definition_version: null,
  end_timestamp: null,
  execution_id: null,
  loops: null,
  output_data: null,
  retryable: null,
  start_timestamp: null,
  status: null,
  summary: null,
  trigger: null
)
```

