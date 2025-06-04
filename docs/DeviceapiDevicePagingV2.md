# Falcon::DeviceapiDevicePagingV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **expires_at** | **Integer** |  | [optional] |
| **limit** | **Integer** |  | [optional] |
| **_next** | **String** |  | [optional] |
| **offset** | **String** |  |  |
| **previous** | **String** |  | [optional] |
| **total** | **Integer** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DeviceapiDevicePagingV2.new(
  expires_at: null,
  limit: null,
  _next: null,
  offset: null,
  previous: null,
  total: null
)
```

