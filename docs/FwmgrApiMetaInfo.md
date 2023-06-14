# Falcon::FwmgrApiMetaInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pagination** | [**FwmgrApiQueryPaging**](FwmgrApiQueryPaging.md) |  | [optional] |
| **powered_by** | **String** |  | [optional] |
| **query_time** | **Float** |  |  |
| **trace_id** | **String** |  |  |
| **writes** | [**FwmgrMsaspecWrites**](FwmgrMsaspecWrites.md) |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::FwmgrApiMetaInfo.new(
  pagination: null,
  powered_by: null,
  query_time: null,
  trace_id: null,
  writes: null
)
```

