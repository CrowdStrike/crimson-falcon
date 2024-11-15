# Falcon::TypesQueryRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **paginate** | [**TypesPaginate**](TypesPaginate.md) |  | [optional] |
| **query** | **String** |  |  |
| **select_fields** | [**TypesQueryRequestSelectFields**](TypesQueryRequestSelectFields.md) |  | [optional] |
| **timestamp** | **Integer** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::TypesQueryRequest.new(
  paginate: null,
  query: null,
  select_fields: null,
  timestamp: null
)
```

