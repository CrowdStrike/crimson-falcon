# Falcon::DomainMetaInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pagination** | [**MsaPaging**](MsaPaging.md) |  | [optional] |
| **powered_by** | **String** |  | [optional] |
| **query_time** | **Float** |  |  |
| **quota** | [**DomainQuota**](DomainQuota.md) |  | [optional] |
| **trace_id** | **String** |  |  |
| **writes** | [**MsaspecWrites**](MsaspecWrites.md) |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainMetaInfo.new(
  pagination: null,
  powered_by: null,
  query_time: null,
  quota: null,
  trace_id: null,
  writes: null
)
```

