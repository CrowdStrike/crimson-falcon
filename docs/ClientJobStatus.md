# Falcon::ClientJobStatus

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **content_length** | **Integer** |  | [optional] |
| **digest_algo** | **String** |  | [optional] |
| **digest_hex** | **String** |  | [optional] |
| **event_count** | **Integer** |  | [optional] |
| **file_link** | **String** |  | [optional] |
| **job_id** | **String** |  |  |
| **job_url** | **String** |  | [optional] |
| **message** | **String** |  | [optional] |
| **percent_complete** | **Integer** |  | [optional] |
| **result_count** | **Integer** |  | [optional] |
| **run_duration** | **Float** |  | [optional] |
| **status** | **String** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ClientJobStatus.new(
  content_length: null,
  digest_algo: null,
  digest_hex: null,
  event_count: null,
  file_link: null,
  job_id: null,
  job_url: null,
  message: null,
  percent_complete: null,
  result_count: null,
  run_duration: null,
  status: null
)
```

