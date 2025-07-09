# Falcon::ChangesACL

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **acl_permission_change** | [**Array&lt;ChangesACLChange&gt;**](ChangesACLChange.md) |  | [optional] |
| **entity** | **String** |  | [optional] |
| **entity_id** | **String** |  | [optional] |
| **entity_name** | **String** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ChangesACL.new(
  acl_permission_change: null,
  entity: null,
  entity_id: null,
  entity_name: null
)
```

