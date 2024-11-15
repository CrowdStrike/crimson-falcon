# Falcon::DomainExecutionMetadataV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **report_params** | [**DomainReportParams**](DomainReportParams.md) |  |  |
| **retry_allowed** | **Boolean** |  |  |
| **retry_performed** | **Boolean** |  |  |
| **retry_report_execution_id** | **String** |  |  |
| **subtype** | **String** |  |  |
| **unscheduled_execution_type** | **String** |  |  |
| **xdr_data** | [**DomainXDRData**](DomainXDRData.md) |  |  |
| **xdr_params** | [**DomainXDRParams**](DomainXDRParams.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainExecutionMetadataV1.new(
  report_params: null,
  retry_allowed: null,
  retry_performed: null,
  retry_report_execution_id: null,
  subtype: null,
  unscheduled_execution_type: null,
  xdr_data: null,
  xdr_params: null
)
```

