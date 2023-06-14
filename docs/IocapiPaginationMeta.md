# Falcon::IocapiPaginationMeta

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** |  | [optional] |
| **next_page** | **String** |  | [optional] |
| **offset** | **Object** |  | [optional] |
| **total** | **Integer** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::IocapiPaginationMeta.new(
  limit: null,
  next_page: null,
  offset: null,
  total: null
)
```

