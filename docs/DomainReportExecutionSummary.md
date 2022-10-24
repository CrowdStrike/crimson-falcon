# Falcon::DomainReportExecutionSummary

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **last_updated_on** | **Time** |  |  |
| **report_file_reference** | **String** |  |  |
| **result_metadata** | [**DomainResultMetadata**](DomainResultMetadata.md) |  |  |
| **status** | **String** |  |  |
| **status_msg** | **String** |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::DomainReportExecutionSummary.new(
  id: null,
  last_updated_on: null,
  report_file_reference: null,
  result_metadata: null,
  status: null,
  status_msg: null
)
```

