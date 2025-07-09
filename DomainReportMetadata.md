# Falcon::DomainReportMetadata

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created_by_user_id** | **String** |  |  |
| **created_by_uuid** | **String** |  |  |
| **discover_params** | [**DomainDiscoverParams**](DomainDiscoverParams.md) |  | [optional] |
| **kestrel_data_export_params** | [**DomainKestrelDataExportParams**](DomainKestrelDataExportParams.md) |  | [optional] |
| **kestrel_params** | [**DomainKestrelParams**](DomainKestrelParams.md) |  | [optional] |
| **last_scheduled_execution** | [**DomainLastScheduledExecution**](DomainLastScheduledExecution.md) |  | [optional] |
| **last_unscheduled_execution** | [**DomainLastUnscheduledExecution**](DomainLastUnscheduledExecution.md) |  |  |
| **subtype** | **String** |  |  |
| **xdr_params** | [**DomainXDRParams**](DomainXDRParams.md) |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainReportMetadata.new(
  created_by_user_id: null,
  created_by_uuid: null,
  discover_params: null,
  kestrel_data_export_params: null,
  kestrel_params: null,
  last_scheduled_execution: null,
  last_unscheduled_execution: null,
  subtype: null,
  xdr_params: null
)
```

