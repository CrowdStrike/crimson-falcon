# Falcon::ApiQueryMetadataJSON

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **costs** | [**Costs**](Costs.md) |  |  |
| **digest_flow** | [**DigestFlow**](DigestFlow.md) |  |  |
| **event_count** | **Integer** | Number of events in the result set |  |
| **extra_data** | **Object** |  |  |
| **field_order** | **Array&lt;String&gt;** | Order of the returned fields |  |
| **filter_query** | **Object** |  |  |
| **is_aggregate** | **Boolean** | True if this is an aggregate query |  |
| **poll_after** | **Integer** | How soon to poll the query after it has been submitted to expected results |  |
| **processed_bytes** | **Integer** | Number of bytes processed to return results |  |
| **processed_events** | **Integer** | Number of events processed in result set |  |
| **query_end** | **Integer** | Timestamp of the end of the query |  |
| **query_spent** | [**QuerySpent**](QuerySpent.md) |  |  |
| **query_start** | **Integer** | Timestampt of when the query started |  |
| **queued_millis** | **Integer** | Number of milliseconds the query was queued before execution |  |
| **quota_total_spent** | [**QuotaTotalSpent**](QuotaTotalSpent.md) |  |  |
| **responder_v_host** | **Integer** | Number of the host returning the response |  |
| **result_buffer_size** | **Integer** | Size of the buffer used to store the result |  |
| **time_millis** | **Integer** | Time spent executing the query in milliseconds |  |
| **total_work** | **Integer** | Total amount of work to execute the query |  |
| **warning** | **String** | Deprecated: Use warnings in the message root instead |  |
| **warnings** | **Array&lt;String&gt;** | Use &#39;warnings&#39; in the message root instead |  |
| **work_done** | **Integer** | Estimate of the work done to complete the query |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ApiQueryMetadataJSON.new(
  costs: null,
  digest_flow: null,
  event_count: null,
  extra_data: null,
  field_order: null,
  filter_query: null,
  is_aggregate: null,
  poll_after: null,
  processed_bytes: null,
  processed_events: null,
  query_end: null,
  query_spent: null,
  query_start: null,
  queued_millis: null,
  quota_total_spent: null,
  responder_v_host: null,
  result_buffer_size: null,
  time_millis: null,
  total_work: null,
  warning: null,
  warnings: null,
  work_done: null
)
```

