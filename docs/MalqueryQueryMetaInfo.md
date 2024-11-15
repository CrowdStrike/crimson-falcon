# Falcon::MalqueryQueryMetaInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pagination** | [**MsaPaging**](MsaPaging.md) |  | [optional] |
| **powered_by** | **String** |  | [optional] |
| **query_time** | **Float** | Elapsed time since the request started in seconds | [optional] |
| **reqid** | **String** | Request ID returned after creating a hunt or exact search | [optional] |
| **status** | **String** | Request status. Possible values: inprogress, failed, done | [optional] |
| **trace_id** | **String** |  |  |
| **writes** | [**MsaspecWrites**](MsaspecWrites.md) |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::MalqueryQueryMetaInfo.new(
  pagination: null,
  powered_by: null,
  query_time: null,
  reqid: null,
  status: null,
  trace_id: null,
  writes: null
)
```

