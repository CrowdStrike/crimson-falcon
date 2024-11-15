# Falcon::DomainUserGroupMembersResponseV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DomainUserGroupMembers&gt;**](DomainUserGroupMembers.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainUserGroupMembersResponseV1.new(
  errors: null,
  meta: null,
  resources: null
)
```

