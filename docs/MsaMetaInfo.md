# Falcon::MsaMetaInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pagination** | [**MsaPaging**](MsaPaging.md) |  | [optional] |
| **powered_by** | **String** |  | [optional] |
| **query_time** | **Float** |  |  |
| **trace_id** | **String** |  |  |
| **writes** | [**MsaResources**](MsaResources.md) |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::MsaMetaInfo.new(
  pagination: null,
  powered_by: null,
  query_time: null,
  trace_id: null,
  writes: null
)
```

