# Falcon::DomainExecutionMetadataSummary

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subtype** | **String** |  |  |
| **unscheduled_execution_type** | **String** |  |  |
| **xdr_data** | [**DomainXDRData**](DomainXDRData.md) |  |  |
| **xdr_params** | [**DomainXDRParams**](DomainXDRParams.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainExecutionMetadataSummary.new(
  subtype: null,
  unscheduled_execution_type: null,
  xdr_data: null,
  xdr_params: null
)
```

