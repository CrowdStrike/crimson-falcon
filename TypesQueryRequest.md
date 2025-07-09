# Falcon::TypesQueryRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **paginate** | [**TypesPaginate**](TypesPaginate.md) |  | [optional] |
| **query** | **String** |  |  |
| **revision_id** | **Integer** |  | [optional] |
| **select_fields** | [**TypesQueryRequestSelectFields**](TypesQueryRequestSelectFields.md) |  | [optional] |
| **timestamp** | **Integer** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::TypesQueryRequest.new(
  paginate: null,
  query: null,
  revision_id: null,
  select_fields: null,
  timestamp: null
)
```

