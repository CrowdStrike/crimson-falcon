# Falcon::MsaEntityActionRequestV3

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action_parameters** | [**Array&lt;MsaspecActionParameter&gt;**](MsaspecActionParameter.md) |  | [optional] |
| **filter** | **String** |  |  |
| **ids** | **Array&lt;String&gt;** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::MsaEntityActionRequestV3.new(
  action_parameters: null,
  filter: null,
  ids: null
)
```

