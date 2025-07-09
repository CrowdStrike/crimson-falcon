# Falcon::ParameterTriggerProvisionParameter

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fields** | [**Hash&lt;String, ParameterTriggerFieldParameter&gt;**](ParameterTriggerFieldParameter.md) | Contains a mapping of each parameterized trigger field with default values. |  |
| **node_id** | **String** | The flow node_id in the model this condition is associated with. |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ParameterTriggerProvisionParameter.new(
  fields: null,
  node_id: null
)
```

