# Falcon::ApidomainQueryResponseV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_count** | **Integer** |  |  |
| **events** | **Array&lt;Object&gt;** |  |  |
| **fields** | [**Array&lt;ClientField&gt;**](ClientField.md) |  | [optional] |
| **filtered_event_count** | **Integer** |  |  |
| **job_status** | [**ClientJobStatus**](ClientJobStatus.md) |  | [optional] |
| **meta_data** | [**ClientQueryResultMetadata**](ClientQueryResultMetadata.md) |  | [optional] |
| **schemas** | [**ClientQueryResponseSchemasV1**](ClientQueryResponseSchemasV1.md) |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ApidomainQueryResponseV1.new(
  event_count: null,
  events: null,
  fields: null,
  filtered_event_count: null,
  job_status: null,
  meta_data: null,
  schemas: null
)
```

