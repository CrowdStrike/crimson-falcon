# Falcon::DomainUserGroupsResponseV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DomainUserGroup&gt;**](DomainUserGroup.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainUserGroupsResponseV1.new(
  errors: null,
  meta: null,
  resources: null
)
```

