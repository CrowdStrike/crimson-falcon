# Falcon::GraphValidationError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cid** | **String** | The cid the validation error applies to if it is not the CID managing the workflow | [optional] |
| **code** | **Integer** | identifier for UI to indicate reason for node being invalid. | [optional] |
| **display_name** | **String** | Display name for the property if it exists in a trigger or activity | [optional] |
| **message** | **String** | Detail of why the node is invalid. |  |
| **node_id** | **String** | ID of the node in the graph that has been invalidated. | [optional] |
| **parent_node_id** | **String** | ID of the parent node in the graph that resulted in a child node being invalidated. | [optional] |
| **property** | **String** | Used to specify an exact property that is invalid for fql evaluation | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::GraphValidationError.new(
  cid: null,
  code: null,
  display_name: null,
  message: null,
  node_id: null,
  parent_node_id: null,
  property: null
)
```

