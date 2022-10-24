# Falcon::DomainMsaEntitiesRolesResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DomainUserRole&gt;**](DomainUserRole.md) |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::DomainMsaEntitiesRolesResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```

