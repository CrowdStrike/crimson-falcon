# Falcon::ApiPaginationMeta

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** |  | [optional] |
| **next_page** | **String** |  | [optional] |
| **offset** | **Object** |  | [optional] |
| **total** | **Integer** |  | [optional] |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::ApiPaginationMeta.new(
  limit: null,
  next_page: null,
  offset: null,
  total: null
)
```

