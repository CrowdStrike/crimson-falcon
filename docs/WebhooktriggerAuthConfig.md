# Falcon::WebhooktriggerAuthConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_key_config** | [**WebhooktriggerAPIKeyConfig**](WebhooktriggerAPIKeyConfig.md) |  | [optional] |
| **auth_type** | **String** | The type of authentication to use for the webhook trigger |  |
| **basic_auth_config** | [**WebhooktriggerBasicAuthConfig**](WebhooktriggerBasicAuthConfig.md) |  | [optional] |
| **hmac_config** | [**WebhooktriggerHMACConfig**](WebhooktriggerHMACConfig.md) |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::WebhooktriggerAuthConfig.new(
  api_key_config: null,
  auth_type: null,
  basic_auth_config: null,
  hmac_config: null
)
```

