# Falcon::MalquerySamplesMetadataMetaInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pagination** | [**MsaspecPaging**](MsaspecPaging.md) |  | [optional] |
| **powered_by** | **String** |  | [optional] |
| **query_time** | **Float** |  | [optional] |
| **status** | **String** |  | [optional] |
| **trace_id** | **String** |  |  |
| **writes** | [**MsaspecWrites**](MsaspecWrites.md) |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::MalquerySamplesMetadataMetaInfo.new(
  pagination: null,
  powered_by: null,
  query_time: null,
  status: null,
  trace_id: null,
  writes: null
)
```

