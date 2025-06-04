# Falcon::WebhooktriggerAPIKeyConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_key** | **String** | API key for this trigger | [optional] |
| **body_location** | **String** | Location of the body containing the API key | [optional] |
| **header_name** | **String** | Name of the header containing the API key | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::WebhooktriggerAPIKeyConfig.new(
  api_key: null,
  body_location: null,
  header_name: null
)
```

