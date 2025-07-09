# Falcon::ApiQueryJobResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **hashed_query_on_view** | **String** | A string hash of the optimized query (the \&quot;query plan\&quot;). For advanced users. |  |
| **id** | **String** | The id of the started queryjob. This can be used to poll results. |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ApiQueryJobResponse.new(
  hashed_query_on_view: null,
  id: null
)
```

