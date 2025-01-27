# Falcon::TypesGetExecutorNodesMetadataResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **count** | **Integer** |  | [optional] |
| **executor_node_ids** | **Array&lt;Integer&gt;** |  | [optional] |
| **executor_node_names** | **Array&lt;String&gt;** |  | [optional] |
| **executor_node_states** | **Array&lt;String&gt;** |  | [optional] |
| **executor_node_types** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::TypesGetExecutorNodesMetadataResponse.new(
  count: null,
  executor_node_ids: null,
  executor_node_names: null,
  executor_node_states: null,
  executor_node_types: null
)
```

