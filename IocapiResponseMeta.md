# Falcon::IocapiResponseMeta

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entity** | **String** |  | [optional] |
| **pagination** | [**IocapiPaginationMeta**](IocapiPaginationMeta.md) |  | [optional] |
| **query_time** | **Float** |  |  |
| **trace_id** | **String** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::IocapiResponseMeta.new(
  entity: null,
  pagination: null,
  query_time: null,
  trace_id: null
)
```

