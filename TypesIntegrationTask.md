# Falcon::TypesIntegrationTask

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **access_token** | **String** |  | [optional] |
| **additional_header** | **String** |  | [optional] |
| **business_application** | **String** |  | [optional] |
| **data** | **String** |  | [optional] |
| **enabled** | **Boolean** |  | [optional] |
| **id** | **String** |  | [optional] |
| **integration** | [**TypesIntegration**](TypesIntegration.md) |  | [optional] |
| **integration_task_type** | [**TypesIntegrationTaskType**](TypesIntegrationTaskType.md) |  | [optional] |
| **latest_task_run** | [**TypesActionRun**](TypesActionRun.md) |  | [optional] |
| **name** | **String** |  | [optional] |
| **next_run** | [**TypesTimestamp**](TypesTimestamp.md) |  | [optional] |
| **progress** | **Integer** |  | [optional] |
| **schedule** | [**TypesComposedSchedule**](TypesComposedSchedule.md) |  | [optional] |
| **schedule_every_unit_display_name** | **String** |  | [optional] |
| **trigger** | **String** |  | [optional] |
| **type** | [**TypesIntegrationTaskType**](TypesIntegrationTaskType.md) |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::TypesIntegrationTask.new(
  access_token: null,
  additional_header: null,
  business_application: null,
  data: null,
  enabled: null,
  id: null,
  integration: null,
  integration_task_type: null,
  latest_task_run: null,
  name: null,
  next_run: null,
  progress: null,
  schedule: null,
  schedule_every_unit_display_name: null,
  trigger: null,
  type: null
)
```

