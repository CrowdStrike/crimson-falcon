# Falcon::ClientQueryResultMetadata

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **costs** | [**ClientCosts**](ClientCosts.md) |  |  |
| **digest_flow** | [**ClientDigestFlow**](ClientDigestFlow.md) |  |  |
| **event_count** | **Integer** |  |  |
| **extra_data** | **Object** |  |  |
| **field_order** | **Array&lt;String&gt;** |  |  |
| **is_aggregate** | **Boolean** |  |  |
| **poll_after** | **Integer** |  |  |
| **processed_bytes** | **Integer** |  |  |
| **processed_events** | **Integer** |  |  |
| **query_end** | **Integer** |  |  |
| **query_spent** | [**ClientSpent**](ClientSpent.md) |  |  |
| **query_start** | **Integer** |  |  |
| **quota_total_spent** | [**ClientSpent**](ClientSpent.md) |  |  |
| **responder_v_host** | **Integer** |  |  |
| **result_buffer_size** | **Integer** |  |  |
| **time_millis** | **Integer** |  |  |
| **total_work** | **Integer** |  |  |
| **warnings** | **Array&lt;Object&gt;** |  |  |
| **work_done** | **Integer** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ClientQueryResultMetadata.new(
  costs: null,
  digest_flow: null,
  event_count: null,
  extra_data: null,
  field_order: null,
  is_aggregate: null,
  poll_after: null,
  processed_bytes: null,
  processed_events: null,
  query_end: null,
  query_spent: null,
  query_start: null,
  quota_total_spent: null,
  responder_v_host: null,
  result_buffer_size: null,
  time_millis: null,
  total_work: null,
  warnings: null,
  work_done: null
)
```

