# Falcon::ParameterConditionProvisionParameter

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fields** | [**Array&lt;ParameterConditionFieldProvisionParameter&gt;**](ParameterConditionFieldProvisionParameter.md) | details for the condition fields to be set when provisioning. |  |
| **node_id** | **String** | The flow node_id in the model this condition is associated with. |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ParameterConditionProvisionParameter.new(
  fields: null,
  node_id: null
)
```

