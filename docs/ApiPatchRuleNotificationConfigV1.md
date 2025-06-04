# Falcon::ApiPatchRuleNotificationConfigV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cid** | **String** |  | [optional] |
| **config_id** | **String** |  | [optional] |
| **plugin_id** | **String** |  | [optional] |
| **recipients** | **Array&lt;String&gt;** |  | [optional] |
| **severity** | **String** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ApiPatchRuleNotificationConfigV1.new(
  cid: null,
  config_id: null,
  plugin_id: null,
  recipients: null,
  severity: null
)
```

