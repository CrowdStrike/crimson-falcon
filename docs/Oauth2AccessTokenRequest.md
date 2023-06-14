# Falcon::Oauth2AccessTokenRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_id** | **String** | The API client ID to authenticate your API requests. For information on generating API clients, see [API documentation inside Falcon](https://falcon.crowdstrike.com/support/documentation/1/crowdstrike-api-introduction-for-developers). |  |
| **client_secret** | **String** | The API client secret to authenticate your API requests. For information on generating API clients, see [API documentation inside Falcon](https://falcon.crowdstrike.com/support/documentation/1/crowdstrike-api-introduction-for-developers). |  |
| **member_cid** | **String** | For MSSP Master CIDs, optionally lock the token to act on behalf of this member CID | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::Oauth2AccessTokenRequest.new(
  client_id: null,
  client_secret: null,
  member_cid: null
)
```

