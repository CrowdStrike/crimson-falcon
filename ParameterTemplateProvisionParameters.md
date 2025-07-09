# Falcon::ParameterTemplateProvisionParameters

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **activities** | [**ParameterActivityProvisionParameters**](ParameterActivityProvisionParameters.md) |  | [optional] |
| **conditions** | [**Array&lt;ParameterConditionProvisionParameter&gt;**](ParameterConditionProvisionParameter.md) | set of parameters for provisioning of conditions within the associated template. | [optional] |
| **trigger** | [**ParameterTriggerProvisionParameter**](ParameterTriggerProvisionParameter.md) |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ParameterTemplateProvisionParameters.new(
  activities: null,
  conditions: null,
  trigger: null
)
```

