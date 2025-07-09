# Falcon::TypesActionRunMetadata

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **collected_objects** | **Integer** |  | [optional] |
| **end_time** | [**TypesTimestamp**](TypesTimestamp.md) |  | [optional] |
| **integration_task_id** | **Integer** |  | [optional] |
| **integration_task_name** | **String** |  | [optional] |
| **integration_task_type** | [**TypesIntegrationTaskType**](TypesIntegrationTaskType.md) |  | [optional] |
| **start_time** | [**TypesTimestamp**](TypesTimestamp.md) |  | [optional] |
| **total_objects** | **Integer** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::TypesActionRunMetadata.new(
  collected_objects: null,
  end_time: null,
  integration_task_id: null,
  integration_task_name: null,
  integration_task_type: null,
  start_time: null,
  total_objects: null
)
```

