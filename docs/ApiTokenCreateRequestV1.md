# Falcon::ApiTokenCreateRequestV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **expires_timestamp** | **Time** | The token&#39;s expiration time (RFC-3339). Null, if the token never expires. | [optional] |
| **label** | **String** | The token label. | [optional] |
| **type** | **String** | The token type. | [optional] |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::ApiTokenCreateRequestV1.new(
  expires_timestamp: null,
  label: null,
  type: null
)
```

