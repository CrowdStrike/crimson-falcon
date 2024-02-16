# Falcon::GraphEnd

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **incoming_flows** | **Array&lt;String&gt;** | Reference to the ID of the flow nodes inbound to the end node. |  |
| **node_id** | **String** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::GraphEnd.new(
  incoming_flows: null,
  node_id: null
)
```

