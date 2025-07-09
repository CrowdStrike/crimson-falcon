# Falcon::ParameterTriggerParameter

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fields** | [**Hash&lt;String, ParameterTriggerFieldParameter&gt;**](ParameterTriggerFieldParameter.md) | Contains a mapping of each parameterized trigger field with default values. |  |
| **node_id** | **String** | The graph node ID for where these conditions reside. |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ParameterTriggerParameter.new(
  fields: null,
  node_id: null
)
```

