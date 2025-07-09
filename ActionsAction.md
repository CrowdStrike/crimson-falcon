# Falcon::ActionsAction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **expected_change_count** | **Integer** |  |  |
| **id** | **String** |  |  |
| **operation_type** | **String** | Possible values: SUPPRESS, PURGE, UNSUPPRESS. |  |
| **previous_change_count** | **Integer** |  |  |
| **reason** | **String** |  | [optional] |
| **status** | **String** | Possible values: RUNNING, DONE, FAILED |  |
| **total_change_count** | **Integer** |  |  |
| **updated_by** | **String** |  |  |
| **updated_date** | **String** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ActionsAction.new(
  expected_change_count: null,
  id: null,
  operation_type: null,
  previous_change_count: null,
  reason: null,
  status: null,
  total_change_count: null,
  updated_by: null,
  updated_date: null
)
```

