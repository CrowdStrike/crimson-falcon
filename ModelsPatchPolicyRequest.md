# Falcon::ModelsPatchPolicyRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** |  |  |
| **is_enabled** | **Boolean** |  |  |
| **name** | **String** |  |  |
| **policy_data** | [**ModelsRequestAPIPolicyData**](ModelsRequestAPIPolicyData.md) |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ModelsPatchPolicyRequest.new(
  description: null,
  is_enabled: null,
  name: null,
  policy_data: null
)
```

