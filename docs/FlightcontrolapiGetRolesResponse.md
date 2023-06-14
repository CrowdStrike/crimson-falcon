# Falcon::FlightcontrolapiGetRolesResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) |  | [optional] |
| **meta** | [**MsaspecMetaInfo**](MsaspecMetaInfo.md) |  |  |
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

