# Falcon::DomainDevicePaging

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **expires_at** | **Integer** |  | [optional] |
| **limit** | **Integer** |  | [optional] |
| **offset** | **String** |  |  |
| **total** | **Integer** |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::DomainDevicePaging.new(
  expires_at: null,
  limit: null,
  offset: null,
  total: null
)
```

