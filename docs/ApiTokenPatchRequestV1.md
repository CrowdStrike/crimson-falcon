# Falcon::ApiTokenPatchRequestV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **expires_timestamp** | **Time** | The token&#39;s expiration time (RFC-3339). Null, if the token never expires. | [optional] |
| **label** | **String** | The token label. | [optional] |
| **revoked** | **Boolean** | Set to true to revoke the token, false to un-revoked it. | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ApiTokenPatchRequestV1.new(
  expires_timestamp: null,
  label: null,
  revoked: null
)
```

