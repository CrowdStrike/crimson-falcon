# Falcon::PublicACL

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **acl_permission_change** | [**Array&lt;PublicACLChange&gt;**](PublicACLChange.md) |  | [optional] |
| **entity** | **String** |  | [optional] |
| **entity_id** | **String** |  | [optional] |
| **entity_name** | **String** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::PublicACL.new(
  acl_permission_change: null,
  entity: null,
  entity_id: null,
  entity_name: null
)
```

