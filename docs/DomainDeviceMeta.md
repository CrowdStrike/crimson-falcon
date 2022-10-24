# Falcon::DomainDeviceMeta

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pagination** | [**DomainDevicePaging**](DomainDevicePaging.md) |  | [optional] |
| **powered_by** | **String** |  | [optional] |
| **query_time** | **Float** |  |  |
| **trace_id** | **String** |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::DomainDeviceMeta.new(
  pagination: null,
  powered_by: null,
  query_time: null,
  trace_id: null
)
```

