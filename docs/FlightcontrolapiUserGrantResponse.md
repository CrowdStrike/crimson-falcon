# Falcon::FlightcontrolapiUserGrantResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) |  | [optional] |
| **meta** | [**MsaspecMetaInfo**](MsaspecMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DomainUserGrants&gt;**](DomainUserGrants.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::FlightcontrolapiUserGrantResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```

