# Falcon::TypesTag

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **automated** | **Boolean** |  | [optional] |
| **id** | **Integer** |  | [optional] |
| **is_default** | **Boolean** |  | [optional] |
| **is_sensitive** | **Boolean** |  | [optional] |
| **name** | **String** |  | [optional] |
| **persistent_signatures** | **Array&lt;Object&gt;** |  | [optional] |
| **reason_tag** | [**Array&lt;TypesReasonTag&gt;**](TypesReasonTag.md) |  | [optional] |
| **type** | **String** |  | [optional] |
| **value** | **String** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::TypesTag.new(
  automated: null,
  id: null,
  is_default: null,
  is_sensitive: null,
  name: null,
  persistent_signatures: null,
  reason_tag: null,
  type: null,
  value: null
)
```

