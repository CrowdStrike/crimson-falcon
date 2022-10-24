# Falcon::FwmgrMsaMetaInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pagination** | [**FwmgrMsaPaging**](FwmgrMsaPaging.md) |  | [optional] |
| **powered_by** | **String** |  | [optional] |
| **query_time** | **Float** |  |  |
| **trace_id** | **String** |  |  |
| **writes** | [**FwmgrMsaResources**](FwmgrMsaResources.md) |  | [optional] |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::FwmgrMsaMetaInfo.new(
  pagination: null,
  powered_by: null,
  query_time: null,
  trace_id: null,
  writes: null
)
```

