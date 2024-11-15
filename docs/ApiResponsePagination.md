# Falcon::ApiResponsePagination

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **offset** | **String** | Encoded state used for pagination | [optional] |
| **total** | **Integer** | The total number of elements |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ApiResponsePagination.new(
  offset: null,
  total: null
)
```

