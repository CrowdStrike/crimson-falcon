# Falcon::ParameterActivityProvisionParameters

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **configuration** | [**Array&lt;ParameterActivityConfigProvisionParameter&gt;**](ParameterActivityConfigProvisionParameter.md) | provisioning parameterization of activity configuration. | [optional] |
| **selection** | [**Array&lt;ParameterActivitySelectionParameter&gt;**](ParameterActivitySelectionParameter.md) | provisioning parameterization of activity selection. | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ParameterActivityProvisionParameters.new(
  configuration: null,
  selection: null
)
```

