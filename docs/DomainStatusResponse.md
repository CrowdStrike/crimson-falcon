# Falcon::DomainStatusResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **base_command** | **String** |  | [optional] |
| **complete** | **Boolean** |  |  |
| **sequence_id** | **Integer** |  | [optional] |
| **session_id** | **String** |  |  |
| **stderr** | **String** |  |  |
| **stdout** | **String** |  |  |
| **task_id** | **String** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainStatusResponse.new(
  base_command: null,
  complete: null,
  sequence_id: null,
  session_id: null,
  stderr: null,
  stdout: null,
  task_id: null
)
```

