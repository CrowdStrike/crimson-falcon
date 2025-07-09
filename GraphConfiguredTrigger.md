# Falcon::GraphConfiguredTrigger

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier for the selected trigger as provided by the triggers API | [optional] |
| **name** | **String** | Display name of the trigger |  |
| **node_id** | **String** |  |  |
| **outgoing_flow** | **String** | Reference to the ID of the flow node outbound from the trigger. |  |
| **parameters** | [**JsonschemaSchema**](JsonschemaSchema.md) |  | [optional] |
| **timer_event_definition** | [**GraphTimerEventDefinition**](GraphTimerEventDefinition.md) |  | [optional] |
| **trigger_type** | **String** | Denotes the type of trigger, signal based, scheduled, on demand, etc | [optional] |
| **version_constraint** | **String** | Semantic version constraint of the trigger, it can be an explicit version or a version constraint. If unspecified the evaluator will use the latest version &lt;&#x3D; 1.0.0 | [optional] |
| **webhook_config** | [**WebhooktriggerAPIRequest**](WebhooktriggerAPIRequest.md) |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::GraphConfiguredTrigger.new(
  id: null,
  name: null,
  node_id: null,
  outgoing_flow: null,
  parameters: null,
  timer_event_definition: null,
  trigger_type: null,
  version_constraint: null,
  webhook_config: null
)
```

