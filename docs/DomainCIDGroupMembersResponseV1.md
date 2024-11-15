# Falcon::DomainCIDGroupMembersResponseV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DomainCIDGroupMembers&gt;**](DomainCIDGroupMembers.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainCIDGroupMembersResponseV1.new(
  errors: null,
  meta: null,
  resources: null
)
```

