# Falcon::WebhooktriggerResponseConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body_content** | **String** | json content of webhook response body | [optional] |
| **content_type** | **String** | standard http content type of webhook response, only supported value is application/json | [optional] |
| **status_code** | **Integer** | http response code for webhook response |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::WebhooktriggerResponseConfig.new(
  body_content: null,
  content_type: null,
  status_code: null
)
```

