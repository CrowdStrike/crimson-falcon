# Falcon::ChangesHighVolumeQueryMeta

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pagination** | [**ChangesHighVolumeQueryPaging**](ChangesHighVolumeQueryPaging.md) |  | [optional] |
| **powered_by** | **String** |  | [optional] |
| **query_time** | **Float** |  |  |
| **trace_id** | **String** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ChangesHighVolumeQueryMeta.new(
  pagination: null,
  powered_by: null,
  query_time: null,
  trace_id: null
)
```

