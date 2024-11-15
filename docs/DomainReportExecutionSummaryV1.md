# Falcon::DomainReportExecutionSummaryV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **execution_metadata** | [**DomainExecutionMetadataSummary**](DomainExecutionMetadataSummary.md) |  |  |
| **id** | **String** |  |  |
| **last_updated_on** | **Time** |  |  |
| **report_file_reference** | **String** |  | [optional] |
| **report_params** | [**DomainReportParams**](DomainReportParams.md) |  |  |
| **result_metadata** | [**DomainResultMetadata**](DomainResultMetadata.md) |  | [optional] |
| **status** | **String** |  |  |
| **status_display** | **String** |  |  |
| **status_msg** | **String** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainReportExecutionSummaryV1.new(
  execution_metadata: null,
  id: null,
  last_updated_on: null,
  report_file_reference: null,
  report_params: null,
  result_metadata: null,
  status: null,
  status_display: null,
  status_msg: null
)
```

