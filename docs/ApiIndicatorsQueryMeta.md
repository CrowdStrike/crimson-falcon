# Falcon::ApiIndicatorsQueryMeta

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pagination** | [**ApiIndicatorsQueryPaging**](ApiIndicatorsQueryPaging.md) |  | [optional] |
| **powered_by** | **String** |  | [optional] |
| **query_time** | **Float** |  |  |
| **trace_id** | **String** |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::ApiIndicatorsQueryMeta.new(
  pagination: null,
  powered_by: null,
  query_time: null,
  trace_id: null
)
```

