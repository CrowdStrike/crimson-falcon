# Falcon::ModelsAPIPolicyEntity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created_at** | **String** |  |  |
| **description** | **String** |  |  |
| **is_enabled** | **Boolean** |  |  |
| **name** | **String** |  |  |
| **policy_data** | [**ModelsAPIPolicyData**](ModelsAPIPolicyData.md) |  | [optional] |
| **policy_id** | **String** |  |  |
| **precedence** | **Integer** |  |  |
| **updated_at** | **String** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ModelsAPIPolicyEntity.new(
  created_at: null,
  description: null,
  is_enabled: null,
  name: null,
  policy_data: null,
  policy_id: null,
  precedence: null,
  updated_at: null
)
```

