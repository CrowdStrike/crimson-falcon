# Falcon::DefinitionsDefinitionExt

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **actions** | [**Hash&lt;String, V2Activity&gt;**](V2Activity.md) |  | [optional] |
| **conditions** | [**Hash&lt;String, V2Condition&gt;**](V2Condition.md) |  | [optional] |
| **description** | **String** |  | [optional] |
| **enabled** | **Boolean** | Indicates whether the workflow is enabled and active or not. |  |
| **id** | **String** | Unique identifier for the trigger. |  |
| **labels** | **Array&lt;String&gt;** |  | [optional] |
| **last_modified_timestamp** | **Time** | Timestamp of when this version of the workflow was created. |  |
| **loops** | [**Hash&lt;String, V2Loop&gt;**](V2Loop.md) |  | [optional] |
| **multi_instance** | **Boolean** |  | [optional] |
| **name** | **String** |  |  |
| **node_registry** | **Hash&lt;String, String&gt;** |  |  |
| **output_fields** | **Array&lt;String&gt;** |  | [optional] |
| **parameters** | [**V2Parameters**](V2Parameters.md) |  | [optional] |
| **parent** | [**V2Model**](V2Model.md) |  |  |
| **provision_on_install** | **Boolean** |  | [optional] |
| **summary** | **String** |  | [optional] |
| **trigger** | [**V2Trigger**](V2Trigger.md) |  |  |
| **type** | **String** |  | [optional] |
| **uniq_node_seen** | **Hash&lt;String, Boolean&gt;** |  |  |
| **use_cases** | **Array&lt;String&gt;** |  | [optional] |
| **vendors** | **Array&lt;String&gt;** |  | [optional] |
| **version** | **Integer** | Version of the workflow. A given definition ID can have many versions. Each time an update is applied a new version is generated. |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DefinitionsDefinitionExt.new(
  actions: null,
  conditions: null,
  description: null,
  enabled: null,
  id: null,
  labels: null,
  last_modified_timestamp: null,
  loops: null,
  multi_instance: null,
  name: null,
  node_registry: null,
  output_fields: null,
  parameters: null,
  parent: null,
  provision_on_install: null,
  summary: null,
  trigger: null,
  type: null,
  uniq_node_seen: null,
  use_cases: null,
  vendors: null,
  version: null
)
```

