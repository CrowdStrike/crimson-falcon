# Falcon::V2Model

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **actions** | [**Hash&lt;String, V2Activity&gt;**](V2Activity.md) |  | [optional] |
| **conditions** | [**Hash&lt;String, V2Condition&gt;**](V2Condition.md) |  | [optional] |
| **loops** | [**Hash&lt;String, V2Loop&gt;**](V2Loop.md) |  | [optional] |
| **node_registry** | **Hash&lt;String, String&gt;** |  |  |
| **output_fields** | **Array&lt;String&gt;** |  | [optional] |
| **parent** | [**V2Model**](V2Model.md) |  |  |
| **summary** | **String** |  | [optional] |
| **trigger** | [**V2Trigger**](V2Trigger.md) |  |  |
| **uniq_node_seen** | **Hash&lt;String, Boolean&gt;** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::V2Model.new(
  actions: null,
  conditions: null,
  loops: null,
  node_registry: null,
  output_fields: null,
  parent: null,
  summary: null,
  trigger: null,
  uniq_node_seen: null
)
```

