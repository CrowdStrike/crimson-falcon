# Falcon::ApiMetaInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pagination** | [**ApiResponsePagination**](ApiResponsePagination.md) |  | [optional] |
| **powered_by** | **String** | The alias of the service which handled the request | [optional] |
| **query_time** | **Float** | The duration (in seconds) that the service took to handle the request |  |
| **trace_id** | **String** | Identifier used to debug the request |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ApiMetaInfo.new(
  pagination: null,
  powered_by: null,
  query_time: null,
  trace_id: null
)
```

