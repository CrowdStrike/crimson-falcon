# Falcon::DomainResultMetadata

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **execution_delay** | **Integer** |  |  |
| **execution_duration** | **Integer** |  |  |
| **execution_finish** | **Time** |  |  |
| **execution_start** | **Time** |  |  |
| **queue_duration** | **Integer** |  |  |
| **queue_start** | **Time** |  |  |
| **report_file_name** | **String** |  |  |
| **report_finish** | **Time** |  |  |
| **result_count** | **Integer** |  |  |
| **result_id** | **String** |  |  |
| **search_window_end** | **Time** |  |  |
| **search_window_start** | **Time** |  |  |
| **use_ingest_time** | **Boolean** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainResultMetadata.new(
  execution_delay: null,
  execution_duration: null,
  execution_finish: null,
  execution_start: null,
  queue_duration: null,
  queue_start: null,
  report_file_name: null,
  report_finish: null,
  result_count: null,
  result_id: null,
  search_window_end: null,
  search_window_start: null,
  use_ingest_time: null
)
```

