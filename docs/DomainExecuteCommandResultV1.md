# Falcon::DomainExecuteCommandResultV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **headers** | **Hash&lt;String, Array&lt;String&gt;&gt;** | The response headers from the partner operation | [optional] |
| **id** | **String** | ID of the plugin that was executed in the format &#39;definition_id.operation_id&#39;. Multi-instance plugins require a config_id as part of the id as well in the format &#39;definition_id.operation_id.config_id&#39;. |  |
| **parsed_headers** | **Object** | The response headers from the partner operation | [optional] |
| **response_body** | **Object** |  | [optional] |
| **status_code** | **Integer** | The response status code from the partner operation. |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainExecuteCommandResultV1.new(
  headers: null,
  id: null,
  parsed_headers: null,
  response_body: null,
  status_code: null
)
```

