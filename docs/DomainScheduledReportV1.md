# Falcon::DomainScheduledReportV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **can_write** | **Boolean** |  | [optional] |
| **created_on** | **Time** |  |  |
| **customer_id** | **String** |  |  |
| **description** | **String** |  |  |
| **expiration_on** | **Time** |  | [optional] |
| **id** | **String** |  |  |
| **last_execution** | [**DomainReportExecutionSummaryV1**](DomainReportExecutionSummaryV1.md) |  | [optional] |
| **last_updated_on** | **Time** |  |  |
| **name** | **String** |  |  |
| **next_execution_on** | **Time** |  | [optional] |
| **notifications** | [**Array&lt;DomainNotifications&gt;**](DomainNotifications.md) |  |  |
| **owned_by_cs** | **Boolean** |  | [optional] |
| **report_metadata** | [**DomainReportMetadata**](DomainReportMetadata.md) |  | [optional] |
| **report_params** | [**DomainReportParams**](DomainReportParams.md) |  |  |
| **schedule** | [**DomainSchedule**](DomainSchedule.md) |  |  |
| **shared_with** | **Array&lt;String&gt;** |  |  |
| **start_on** | **Time** |  | [optional] |
| **status** | **String** |  |  |
| **stop_on** | **Time** |  | [optional] |
| **tracking** | **String** |  | [optional] |
| **trigger_reference** | **String** |  | [optional] |
| **type** | **String** |  |  |
| **user_id** | **String** |  |  |
| **user_uuid** | **String** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainScheduledReportV1.new(
  can_write: null,
  created_on: null,
  customer_id: null,
  description: null,
  expiration_on: null,
  id: null,
  last_execution: null,
  last_updated_on: null,
  name: null,
  next_execution_on: null,
  notifications: null,
  owned_by_cs: null,
  report_metadata: null,
  report_params: null,
  schedule: null,
  shared_with: null,
  start_on: null,
  status: null,
  stop_on: null,
  tracking: null,
  trigger_reference: null,
  type: null,
  user_id: null,
  user_uuid: null
)
```

