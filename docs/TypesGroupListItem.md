# Falcon::TypesGroupListItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created_by** | **String** |  | [optional] |
| **group_id** | **Integer** |  | [optional] |
| **is_default** | **Boolean** |  | [optional] |
| **is_oob** | **Boolean** |  | [optional] |
| **is_parent** | **Boolean** |  | [optional] |
| **name** | **String** |  | [optional] |
| **parent** | [**TypesGroupMinDetailsWithParent**](TypesGroupMinDetailsWithParent.md) |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::TypesGroupListItem.new(
  created_by: null,
  group_id: null,
  is_default: null,
  is_oob: null,
  is_parent: null,
  name: null,
  parent: null
)
```

