# Falcon::TypesGroupDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **children** | [**Array&lt;TypesGroupMinDetails&gt;**](TypesGroupMinDetails.md) |  | [optional] |
| **created_at** | **Integer** |  | [optional] |
| **created_by** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **group_id** | **Integer** |  | [optional] |
| **group_type** | **String** |  | [optional] |
| **is_default** | **Boolean** |  | [optional] |
| **is_oob** | **Boolean** |  | [optional] |
| **name** | **String** |  | [optional] |
| **parent** | [**TypesGroupMinDetails**](TypesGroupMinDetails.md) |  | [optional] |
| **scope** | **String** |  | [optional] |
| **updated_at** | **Integer** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::TypesGroupDetails.new(
  children: null,
  created_at: null,
  created_by: null,
  description: null,
  group_id: null,
  group_type: null,
  is_default: null,
  is_oob: null,
  name: null,
  parent: null,
  scope: null,
  updated_at: null
)
```

