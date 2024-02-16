# Falcon::ModelsAPIPolicyExclusion

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **conditions** | [**Array&lt;ModelsExclusionCondition&gt;**](ModelsExclusionCondition.md) |  |  |
| **created_at** | **String** |  | [optional] |
| **description** | **String** |  |  |
| **name** | **String** |  |  |
| **policy_type_uuid** | **String** |  |  |
| **updated_at** | **String** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ModelsAPIPolicyExclusion.new(
  conditions: null,
  created_at: null,
  description: null,
  name: null,
  policy_type_uuid: null,
  updated_at: null
)
```

