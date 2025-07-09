# Falcon::ModelsRule

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **default_configuration** | [**ModelsRuleDefaultConfiguration**](ModelsRuleDefaultConfiguration.md) |  |  |
| **full_description** | [**ModelsMessage**](ModelsMessage.md) |  |  |
| **help** | [**Help**](Help.md) |  |  |
| **help_uri** | **String** |  |  |
| **id** | **String** |  |  |
| **name** | **String** |  |  |
| **properties** | [**ModelsRuleProperties**](ModelsRuleProperties.md) |  |  |
| **short_description** | [**ModelsMessage**](ModelsMessage.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ModelsRule.new(
  default_configuration: null,
  full_description: null,
  help: null,
  help_uri: null,
  id: null,
  name: null,
  properties: null,
  short_description: null
)
```

