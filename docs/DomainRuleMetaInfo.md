# Falcon::DomainRuleMetaInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pagination** | [**MsaPaging**](MsaPaging.md) |  | [optional] |
| **powered_by** | **String** | The API that generated the response | [optional] |
| **query_time** | **Float** | How much time the query took |  |
| **quota** | [**DomainRuleQuota**](DomainRuleQuota.md) |  | [optional] |
| **trace_id** | **String** | The request trace ID |  |
| **writes** | [**MsaspecWrites**](MsaspecWrites.md) |  | [optional] |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::DomainRuleMetaInfo.new(
  pagination: null,
  powered_by: null,
  query_time: null,
  quota: null,
  trace_id: null,
  writes: null
)
```

