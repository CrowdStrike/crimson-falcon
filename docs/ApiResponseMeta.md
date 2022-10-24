# Falcon::ApiResponseMeta

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entity** | **String** |  | [optional] |
| **pagination** | [**ApiPaginationMeta**](ApiPaginationMeta.md) |  | [optional] |
| **query_time** | **Float** |  |  |
| **trace_id** | **String** |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::ApiResponseMeta.new(
  entity: null,
  pagination: null,
  query_time: null,
  trace_id: null
)
```

