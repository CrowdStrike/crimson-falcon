# Falcon::V2Parameters

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **actions** | [**V2ActivityParameters**](V2ActivityParameters.md) |  | [optional] |
| **conditions** | **Hash&lt;String, Array&lt;V2ConditionGroups&gt;&gt;** |  | [optional] |
| **install_instructions** | **String** | Installation instructions for the template. | [optional] |
| **trigger** | [**ParameterTriggerParameter**](ParameterTriggerParameter.md) |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::V2Parameters.new(
  actions: null,
  conditions: null,
  install_instructions: null,
  trigger: null
)
```

