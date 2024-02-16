# Falcon::V2Definition

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **actions** | [**Hash&lt;String, V2Activity&gt;**](V2Activity.md) |  | [optional] |
| **conditions** | [**Hash&lt;String, V2Condition&gt;**](V2Condition.md) |  | [optional] |
| **description** | **String** |  | [optional] |
| **labels** | **Array&lt;String&gt;** |  | [optional] |
| **loops** | [**Hash&lt;String, V2Loop&gt;**](V2Loop.md) |  | [optional] |
| **multi_instance** | **Boolean** |  | [optional] |
| **name** | **String** |  |  |
| **node_registry** | **Hash&lt;String, String&gt;** |  |  |
| **parameters** | [**V2Parameters**](V2Parameters.md) |  | [optional] |
| **provision_on_install** | **Boolean** |  | [optional] |
| **trigger** | [**V2Trigger**](V2Trigger.md) |  |  |
| **type** | **String** |  | [optional] |
| **uniq_node_seen** | **Hash&lt;String, Boolean&gt;** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::V2Definition.new(
  actions: null,
  conditions: null,
  description: null,
  labels: null,
  loops: null,
  multi_instance: null,
  name: null,
  node_registry: null,
  parameters: null,
  provision_on_install: null,
  trigger: null,
  type: null,
  uniq_node_seen: null
)
```

