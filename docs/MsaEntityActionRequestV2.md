# Falcon::MsaEntityActionRequestV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action_parameters** | [**Array&lt;MsaActionParameter&gt;**](MsaActionParameter.md) |  | [optional] |
| **ids** | **Array&lt;String&gt;** |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::MsaEntityActionRequestV2.new(
  action_parameters: null,
  ids: null
)
```

