# Falcon::ParameterActivitySelectionParameter

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | A static activity ID that is a suitable candidate for specifying at provisioning time. |  |
| **properties** | **Object** | Statically defines properties that will be applied to the referenced activity. |  |
| **source** | **String** | The ID of the node in the model the activity should be bound to at provisioning time. The activity will be generated along with a flow node that connects it to this source node. |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ParameterActivitySelectionParameter.new(
  id: null,
  properties: null,
  source: null
)
```

