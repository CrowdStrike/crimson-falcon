# Falcon::TypesActionRunEvent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **flat_data** | **Hash&lt;String, String&gt;** |  |  |
| **additional_data** | **String** |  | [optional] |
| **data** | [**TypesActionRunEventData**](TypesActionRunEventData.md) |  | [optional] |
| **flat_fields** | **Array&lt;String&gt;** |  | [optional] |
| **id** | **Integer** |  | [optional] |
| **message** | **String** |  | [optional] |
| **object** | **String** |  | [optional] |
| **object_type** | **String** |  | [optional] |
| **send_time** | [**TypesTimestamp**](TypesTimestamp.md) |  | [optional] |
| **status** | **Integer** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::TypesActionRunEvent.new(
  flat_data: null,
  additional_data: null,
  data: null,
  flat_fields: null,
  id: null,
  message: null,
  object: null,
  object_type: null,
  send_time: null,
  status: null
)
```

