# Falcon::DomainConfigV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** | App ID of the configuration |  |
| **config** | **Object** |  |  |
| **config_id** | **String** | ID of the configuration |  |
| **definition_id** | **String** | Definition ID of the configuration |  |
| **state** | **String** | The current state of the config |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainConfigV1.new(
  app_id: null,
  config: null,
  config_id: null,
  definition_id: null,
  state: null
)
```

