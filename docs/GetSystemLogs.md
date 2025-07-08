# Falcon::GetSystemLogs

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;ErrorBc084ac4caa243b199e2307fb94184c3&gt;**](ErrorBc084ac4caa243b199e2307fb94184c3.md) |  | [optional] |
| **meta** | [**Meta6dbc34e4022d4b5c9fe5785caf9801e7**](Meta6dbc34e4022d4b5c9fe5785caf9801e7.md) |  | [optional] |
| **resources** | [**Array&lt;SystemLog35829c828fcc41f99005750f1c86b16b&gt;**](SystemLog35829c828fcc41f99005750f1c86b16b.md) |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::GetSystemLogs.new(
  errors: null,
  meta: null,
  resources: null
)
```

