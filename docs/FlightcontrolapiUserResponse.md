# Falcon::FlightcontrolapiUserResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DomainUser&gt;**](DomainUser.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::FlightcontrolapiUserResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```

