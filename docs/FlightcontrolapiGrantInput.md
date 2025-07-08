# Falcon::FlightcontrolapiGrantInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action** | **String** | &#39;grant&#39; or &#39;revoke&#39; | [optional] |
| **cid** | **String** |  | [optional] |
| **expires_at** | **String** | expiration date time of the role in RFC3339 format | [optional] |
| **role_ids** | **Array&lt;String&gt;** |  | [optional] |
| **uuid** | **String** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::FlightcontrolapiGrantInput.new(
  action: null,
  cid: null,
  expires_at: null,
  role_ids: null,
  uuid: null
)
```

