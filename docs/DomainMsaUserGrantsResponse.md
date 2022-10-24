# Falcon::DomainMsaUserGrantsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DomainUserGrants&gt;**](DomainUserGrants.md) |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::DomainMsaUserGrantsResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```

