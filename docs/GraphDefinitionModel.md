# Falcon::GraphDefinitionModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **activities** | [**Hash&lt;String, GraphConfiguredActivity&gt;**](GraphConfiguredActivity.md) | Details of all the activities within the model. Each activity has a unique node ID as the key, that is set by the caller. | [optional] |
| **_end** | [**GraphEnd**](GraphEnd.md) |  | [optional] |
| **flows** | [**Hash&lt;String, GraphFlow&gt;**](GraphFlow.md) | Details all the sequence flows within the model. Each flow has a unique node ID as the key, that is set by the caller. |  |
| **gateways** | [**Hash&lt;String, GraphGateway&gt;**](GraphGateway.md) | Details all the gateways within the model. Each gateway has a unique node ID as the key, that is set by the caller. | [optional] |
| **node_registry** | **Object** |  |  |
| **sub_models** | [**Hash&lt;String, GraphSubModel&gt;**](GraphSubModel.md) | Details of all sub-models within the model. Each sub-model has a unique node ID as the key set by the caller. | [optional] |
| **trigger** | [**GraphConfiguredTrigger**](GraphConfiguredTrigger.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::GraphDefinitionModel.new(
  activities: null,
  _end: null,
  flows: null,
  gateways: null,
  node_registry: null,
  sub_models: null,
  trigger: null
)
```

