# Falcon::MlscannerMetaInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pagination** | [**MsaPaging**](MsaPaging.md) |  | [optional] |
| **powered_by** | **String** |  | [optional] |
| **query_time** | **Float** |  |  |
| **quota** | [**MlscannerQuota**](MlscannerQuota.md) |  | [optional] |
| **trace_id** | **String** |  |  |
| **writes** | [**MsaResources**](MsaResources.md) |  | [optional] |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::MlscannerMetaInfo.new(
  pagination: null,
  powered_by: null,
  query_time: null,
  quota: null,
  trace_id: null,
  writes: null
)
```

