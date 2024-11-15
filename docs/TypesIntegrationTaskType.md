# Falcon::TypesIntegrationTaskType

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **category** | **String** |  | [optional] |
| **display_name** | **String** |  | [optional] |
| **enabled** | **Boolean** |  | [optional] |
| **id** | **Integer** |  | [optional] |
| **name** | **String** |  | [optional] |
| **required_integration_types** | [**Array&lt;TypesIntegrationType&gt;**](TypesIntegrationType.md) |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::TypesIntegrationTaskType.new(
  category: null,
  display_name: null,
  enabled: null,
  id: null,
  name: null,
  required_integration_types: null
)
```

