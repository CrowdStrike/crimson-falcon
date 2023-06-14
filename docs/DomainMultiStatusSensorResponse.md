# Falcon::DomainMultiStatusSensorResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **aid** | **String** |  |  |
| **base_command** | **String** |  | [optional] |
| **complete** | **Boolean** |  |  |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) |  |  |
| **offline_queued** | **Boolean** |  |  |
| **query_time** | **Float** |  |  |
| **sequence_id** | **Integer** |  | [optional] |
| **session_id** | **String** |  |  |
| **stderr** | **String** |  |  |
| **stdout** | **String** |  |  |
| **task_id** | **String** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainMultiStatusSensorResponse.new(
  aid: null,
  base_command: null,
  complete: null,
  errors: null,
  offline_queued: null,
  query_time: null,
  sequence_id: null,
  session_id: null,
  stderr: null,
  stdout: null,
  task_id: null
)
```

