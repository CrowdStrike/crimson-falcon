# Falcon::DomainSPAPIQueryMeta

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pagination** | [**DomainSPAPIQueryPaging**](DomainSPAPIQueryPaging.md) |  | [optional] |
| **powered_by** | **String** |  | [optional] |
| **query_time** | **Float** |  |  |
| **quota** | [**DomainQuota**](DomainQuota.md) |  | [optional] |
| **trace_id** | **String** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainSPAPIQueryMeta.new(
  pagination: null,
  powered_by: null,
  query_time: null,
  quota: null,
  trace_id: null
)
```

