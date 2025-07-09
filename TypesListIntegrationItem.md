# Falcon::TypesListIntegrationItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | **String** |  | [optional] |
| **enabled** | **Boolean** |  | [optional] |
| **id** | **Integer** |  | [optional] |
| **integration_type** | [**TypesIntegrationType**](TypesIntegrationType.md) |  | [optional] |
| **name** | **String** |  | [optional] |
| **node** | [**TypesListIntegrationsExecutorNode**](TypesListIntegrationsExecutorNode.md) |  | [optional] |
| **type** | [**TypesIntegrationType**](TypesIntegrationType.md) |  | [optional] |
| **update_time** | **Integer** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::TypesListIntegrationItem.new(
  data: null,
  enabled: null,
  id: null,
  integration_type: null,
  name: null,
  node: null,
  type: null,
  update_time: null
)
```

