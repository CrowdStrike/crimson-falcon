# Falcon::ApiPaging

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **count** | **Integer** | number of records returned | [optional] |
| **limit** | **Integer** | maximum number of records to return in a page | [optional] |
| **_next** | **String** | start key to list results of next page, used in list APIs | [optional] |
| **offset** | **Integer** | index of the first record of the next page in search results | [optional] |
| **total** | **Integer** | total number of records matching the filter criteria | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ApiPaging.new(
  count: null,
  limit: null,
  _next: null,
  offset: null,
  total: null
)
```

