# Falcon::ApiExecutionMetadataV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **retry_allowed** | **Boolean** |  |  |
| **retry_performed** | **Boolean** |  |  |
| **retry_report_execution_id** | **String** |  |  |
| **subtype** | **String** |  |  |
| **unscheduled_execution_type** | **String** |  |  |
| **xdr_data** | [**DomainXDRData**](DomainXDRData.md) |  |  |
| **xdr_params** | [**DomainXDRParams**](DomainXDRParams.md) |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::ApiExecutionMetadataV1.new(
  retry_allowed: null,
  retry_performed: null,
  retry_report_execution_id: null,
  subtype: null,
  unscheduled_execution_type: null,
  xdr_data: null,
  xdr_params: null
)
```

