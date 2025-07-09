# Falcon::DomainReportExecutionV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **can_write** | **Boolean** |  | [optional] |
| **created_on** | **Time** |  |  |
| **customer_id** | **String** |  |  |
| **execution_metadata** | [**DomainExecutionMetadataV1**](DomainExecutionMetadataV1.md) |  | [optional] |
| **expiration_on** | **Time** |  |  |
| **id** | **String** |  |  |
| **job_reference** | **String** |  | [optional] |
| **last_updated_on** | **Time** |  |  |
| **report_file_reference** | **String** |  | [optional] |
| **report_params** | [**DomainReportParams**](DomainReportParams.md) |  |  |
| **result_metadata** | [**DomainResultMetadata**](DomainResultMetadata.md) |  | [optional] |
| **scheduled_report_id** | **String** |  |  |
| **shared_with** | **Array&lt;String&gt;** |  |  |
| **status** | **String** |  |  |
| **status_display** | **String** |  |  |
| **status_msg** | **String** |  |  |
| **tracking** | **String** |  | [optional] |
| **trigger_reference** | **String** |  | [optional] |
| **type** | **String** |  |  |
| **user_id** | **String** |  |  |
| **user_uuid** | **String** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainReportExecutionV1.new(
  can_write: null,
  created_on: null,
  customer_id: null,
  execution_metadata: null,
  expiration_on: null,
  id: null,
  job_reference: null,
  last_updated_on: null,
  report_file_reference: null,
  report_params: null,
  result_metadata: null,
  scheduled_report_id: null,
  shared_with: null,
  status: null,
  status_display: null,
  status_msg: null,
  tracking: null,
  trigger_reference: null,
  type: null,
  user_id: null,
  user_uuid: null
)
```

