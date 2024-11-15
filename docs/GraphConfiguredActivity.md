# Falcon::GraphConfiguredActivity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_class** | **String** | The class of activity. If undefined it is an ActivityClassExternal | [optional] |
| **flows** | [**Flows**](Flows.md) |  |  |
| **id** | **String** | The unique identifier of the selected activity that is being configured. |  |
| **max_seconds** | **String** | Maximum seconds to wait for an async process to finish. Overrides default async_max_seconds on Activity seed. | [optional] |
| **name** | **String** | Optional user provided name for the activity, if not specified a default of the name for that Activity will be used. |  |
| **node_id** | **String** |  |  |
| **properties** | **Object** | Dynamic payload providing values needed to configure the activity for execution. The structure of this data is dictated by the JSON Schema defined for the selected Activity. |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::GraphConfiguredActivity.new(
  _class: null,
  flows: null,
  id: null,
  max_seconds: null,
  name: null,
  node_id: null,
  properties: null
)
```

