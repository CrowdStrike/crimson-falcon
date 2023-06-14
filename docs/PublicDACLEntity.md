# Falcon::PublicDACLEntity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **acl_change_type** | **Integer** |  | [optional] |
| **acl_permission_change** | [**Array&lt;PublicAttribute&gt;**](PublicAttribute.md) |  |  |
| **acl_principal** | **String** |  |  |
| **acl_type** | **Integer** | Possible values: 0 - ALLOW, 1 - DENY |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::PublicDACLEntity.new(
  acl_change_type: null,
  acl_permission_change: null,
  acl_principal: null,
  acl_type: null
)
```

