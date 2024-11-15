# Falcon::GraphEnd

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **incoming_flows** | **Array&lt;String&gt;** | Reference to the ID of the flow nodes inbound to the end node. |  |
| **node_id** | **String** |  |  |
| **output_fields** | **Array&lt;String&gt;** | Keys of the fields that are the output for this model | [optional] |
| **summary** | **String** | Summary of the workflow is free form text with possibly embedded variables | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::GraphEnd.new(
  incoming_flows: null,
  node_id: null,
  output_fields: null,
  summary: null
)
```

