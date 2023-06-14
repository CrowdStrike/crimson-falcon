# Falcon::ApiTokenDetailsResourceV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created_timestamp** | **Time** |  |  |
| **expires_timestamp** | **Time** |  |  |
| **id** | **String** |  |  |
| **label** | **String** |  |  |
| **last_used_timestamp** | **Time** |  |  |
| **revoked_timestamp** | **Time** |  |  |
| **status** | **String** |  |  |
| **type** | **String** |  |  |
| **value** | **String** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ApiTokenDetailsResourceV1.new(
  created_timestamp: null,
  expires_timestamp: null,
  id: null,
  label: null,
  last_used_timestamp: null,
  revoked_timestamp: null,
  status: null,
  type: null,
  value: null
)
```

