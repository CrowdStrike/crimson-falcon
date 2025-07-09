# Falcon::WebhooktriggerResponseConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body_content** | **String** | json content of webhook response body | [optional] |
| **status_code** | **Integer** | http response code for webhook response |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::WebhooktriggerResponseConfig.new(
  body_content: null,
  status_code: null
)
```

