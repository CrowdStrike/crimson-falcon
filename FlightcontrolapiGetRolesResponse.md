# Falcon::FlightcontrolapiGetRolesResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DomainRole&gt;**](DomainRole.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::FlightcontrolapiGetRolesResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```

