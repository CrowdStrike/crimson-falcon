# Falcon::DomainAccessTokenResponseV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **access_token** | **String** |  | [optional] |
| **expires_in** | **Integer** |  | [optional] |
| **id_token** | **String** |  | [optional] |
| **issued_token_type** | **String** |  | [optional] |
| **refresh_token** | **String** |  | [optional] |
| **scope** | **String** |  | [optional] |
| **token_type** | **String** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainAccessTokenResponseV1.new(
  access_token: null,
  expires_in: null,
  id_token: null,
  issued_token_type: null,
  refresh_token: null,
  scope: null,
  token_type: null
)
```

