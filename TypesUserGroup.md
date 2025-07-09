# Falcon::TypesUserGroup

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created_by** | **String** |  |  |
| **description** | **String** |  |  |
| **group_id** | **Integer** |  |  |
| **is_default** | **Boolean** |  |  |
| **is_internal** | **Boolean** |  |  |
| **is_oob** | **Boolean** |  |  |
| **name** | **String** |  |  |
| **parent** | [**TypesUserGroup**](TypesUserGroup.md) |  |  |
| **scope** | **String** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::TypesUserGroup.new(
  created_by: null,
  description: null,
  group_id: null,
  is_default: null,
  is_internal: null,
  is_oob: null,
  name: null,
  parent: null,
  scope: null
)
```

