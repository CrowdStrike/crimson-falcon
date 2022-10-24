# Falcon::DomainNotificationConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **config_id** | **String** |  |  |
| **plugin_id** | **String** |  |  |
| **recipients** | **Array&lt;String&gt;** |  |  |
| **severity** | **String** |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::DomainNotificationConfig.new(
  config_id: null,
  plugin_id: null,
  recipients: null,
  severity: null
)
```

