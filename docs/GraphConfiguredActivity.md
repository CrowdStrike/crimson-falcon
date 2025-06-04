# Falcon::GraphConfiguredActivity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_class** | **String** | The class of activity. If undefined it is an ActivityClassDefault | [optional] |
| **flows** | [**Flows**](Flows.md) |  |  |
| **id** | **String** | The unique identifier of the selected activity that is being configured. |  |
| **inline_configuration** | [**GraphInlineActivityConfig**](GraphInlineActivityConfig.md) |  | [optional] |
| **max_seconds** | **String** | Maximum seconds to wait for an async process to finish. Overrides default async_max_seconds on Activity seed. | [optional] |
| **name** | **String** | Optional user provided name for the activity, if not specified a default of the name for that Activity will be used. |  |
| **node_id** | **String** |  |  |
| **properties** | **Object** | Dynamic payload providing values needed to configure the activity for execution. The structure of this data is dictated by the JSON Schema defined for the selected Activity. |  |
| **version_constraint** | **String** | Semantic version constraint of the activity, can be an explicit version or a version constraint. If unspecified the latest activity &lt;&#x3D; 1.0.0 is used. | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::GraphConfiguredActivity.new(
  _class: null,
  flows: null,
  id: null,
  inline_configuration: null,
  max_seconds: null,
  name: null,
  node_id: null,
  properties: null,
  version_constraint: null
)
```

