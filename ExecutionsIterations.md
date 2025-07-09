# Falcon::ExecutionsIterations

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **completed** | **Integer** | count of executions with completed status. |  |
| **failed** | **Integer** | count of executions with failed status. |  |
| **in_progress** | **Integer** | count of executions with in progress status |  |
| **is_nonrecoverable** | **Boolean** | true when sub-model has non recoverable status |  |
| **pending** | **Integer** | count of executions that are pending |  |
| **total** | **Integer** | count of total executions. |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ExecutionsIterations.new(
  completed: null,
  failed: null,
  in_progress: null,
  is_nonrecoverable: null,
  pending: null,
  total: null
)
```

