# Falcon::MalquerySamplesMetadataMetaInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pagination** | [**MsaPaging**](MsaPaging.md) |  | [optional] |
| **powered_by** | **String** |  | [optional] |
| **query_time** | **Float** |  | [optional] |
| **status** | **String** |  | [optional] |
| **trace_id** | **String** |  |  |
| **writes** | [**MsaResources**](MsaResources.md) |  | [optional] |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::MalquerySamplesMetadataMetaInfo.new(
  pagination: null,
  powered_by: null,
  query_time: null,
  status: null,
  trace_id: null,
  writes: null
)
```

