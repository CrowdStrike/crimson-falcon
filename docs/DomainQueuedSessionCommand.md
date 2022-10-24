# Falcon::DomainQueuedSessionCommand

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **base_command** | **String** |  |  |
| **cloud_request_id** | **String** |  |  |
| **command_string** | **String** |  |  |
| **created_at** | **Time** |  |  |
| **deleted_at** | **Time** |  |  |
| **status** | **String** |  |  |
| **status_text** | **String** |  | [optional] |
| **updated_at** | **Time** |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::DomainQueuedSessionCommand.new(
  base_command: null,
  cloud_request_id: null,
  command_string: null,
  created_at: null,
  deleted_at: null,
  status: null,
  status_text: null,
  updated_at: null
)
```

