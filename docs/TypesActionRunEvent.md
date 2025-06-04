# Falcon::TypesActionRunEvent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **additional_data** | **String** |  | [optional] |
| **data** | [**TypesActionRunEventData**](TypesActionRunEventData.md) |  | [optional] |
| **flat_data** | **Hash&lt;String, String&gt;** |  | [optional] |
| **flat_fields** | **Array&lt;String&gt;** |  | [optional] |
| **id** | **String** |  | [optional] |
| **message** | **String** |  | [optional] |
| **object** | **String** |  | [optional] |
| **object_type** | **String** |  | [optional] |
| **send_time** | **String** |  | [optional] |
| **status** | **Integer** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::TypesActionRunEvent.new(
  additional_data: null,
  data: null,
  flat_data: null,
  flat_fields: null,
  id: null,
  message: null,
  object: null,
  object_type: null,
  send_time: null,
  status: null
)
```

