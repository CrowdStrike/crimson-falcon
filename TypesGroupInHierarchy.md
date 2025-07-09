# Falcon::TypesGroupInHierarchy

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **children** | [**Array&lt;TypesGroupInHierarchy&gt;**](TypesGroupInHierarchy.md) |  | [optional] |
| **created_by** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **group_id** | **Integer** |  | [optional] |
| **group_type** | **String** |  | [optional] |
| **is_default** | **Boolean** |  | [optional] |
| **is_oob** | **Boolean** |  | [optional] |
| **name** | **String** |  | [optional] |
| **scope** | **String** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::TypesGroupInHierarchy.new(
  children: null,
  created_by: null,
  description: null,
  group_id: null,
  group_type: null,
  is_default: null,
  is_oob: null,
  name: null,
  scope: null
)
```

