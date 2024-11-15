# Falcon::DomainDiscoverAPIMetaInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pagination** | [**DomainDiscoverAPIPaging**](DomainDiscoverAPIPaging.md) |  | [optional] |
| **powered_by** | **String** |  | [optional] |
| **query_time** | **Float** |  |  |
| **trace_id** | **String** |  |  |
| **writes** | [**MsaspecWrites**](MsaspecWrites.md) |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainDiscoverAPIMetaInfo.new(
  pagination: null,
  powered_by: null,
  query_time: null,
  trace_id: null,
  writes: null
)
```

