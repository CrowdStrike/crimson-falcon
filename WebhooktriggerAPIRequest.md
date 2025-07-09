# Falcon::WebhooktriggerAPIRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **auth_config** | [**WebhooktriggerAuthConfig**](WebhooktriggerAuthConfig.md) |  | [optional] |
| **change_log** | **String** | An optional change log describing the changes made in the update | [optional] |
| **description** | **String** | Description for the trigger. | [optional] |
| **name** | **String** | User friendly display name for the webhook trigger, this the fully qualified name that provides the context hierarchy. |  |
| **response_config** | [**WebhooktriggerResponseConfig**](WebhooktriggerResponseConfig.md) |  | [optional] |
| **webhook_schema** | **Object** | JSON schema of fields in the output of this trigger | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::WebhooktriggerAPIRequest.new(
  auth_config: null,
  change_log: null,
  description: null,
  name: null,
  response_config: null,
  webhook_schema: null
)
```

