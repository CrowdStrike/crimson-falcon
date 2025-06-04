# Falcon::TypesUpdateGroupRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **children** | **Array&lt;Integer&gt;** |  | [optional] |
| **description** | **String** |  | [optional] |
| **group_id** | **Integer** |  | [optional] |
| **group_type** | **String** |  | [optional] |
| **is_default** | **Boolean** |  | [optional] |
| **name** | **String** |  | [optional] |
| **parent_id** | **Integer** |  | [optional] |
| **scope** | **String** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::TypesUpdateGroupRequest.new(
  children: null,
  description: null,
  group_id: null,
  group_type: null,
  is_default: null,
  name: null,
  parent_id: null,
  scope: null
)
```

