# Falcon::V2Trigger

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **_next** | **Array&lt;String&gt;** |  |  |
| **parameters** | [**JsonschemaSchema**](JsonschemaSchema.md) |  | [optional] |
| **schedule** | [**GraphTimerEventDefinition**](GraphTimerEventDefinition.md) |  | [optional] |
| **type** | **String** |  | [optional] |
| **webhook_config** | [**WebhooktriggerAPIRequest**](WebhooktriggerAPIRequest.md) |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::V2Trigger.new(
  event: null,
  name: null,
  _next: null,
  parameters: null,
  schedule: null,
  type: null,
  webhook_config: null
)
```

