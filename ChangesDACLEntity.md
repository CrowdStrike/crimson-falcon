# Falcon::ChangesDACLEntity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **acl_change_type** | **Integer** |  | [optional] |
| **acl_permission_change** | [**Array&lt;ChangesAttribute&gt;**](ChangesAttribute.md) |  |  |
| **acl_principal** | **String** |  |  |
| **acl_principal_id** | **String** |  |  |
| **acl_type** | **Integer** | Possible values: 0 - ALLOW, 1 - DENY |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ChangesDACLEntity.new(
  acl_change_type: null,
  acl_permission_change: null,
  acl_principal: null,
  acl_principal_id: null,
  acl_type: null
)
```

