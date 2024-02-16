# Falcon::Flows

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **default** | **String** | Reference to the ID of the sequence flow node which acts as the default path. | [optional] |
| **incoming** | **Array&lt;String&gt;** | References to the IDs of the sequence flow nodes inbound to the gateway. |  |
| **outgoing** | **Array&lt;String&gt;** | References to the IDs of the sequence flow nodes outbound from the gateway. |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::Flows.new(
  default: null,
  incoming: null,
  outgoing: null
)
```

