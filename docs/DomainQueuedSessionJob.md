# Falcon::DomainQueuedSessionJob

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **commands** | [**Array&lt;DomainQueuedSessionCommand&gt;**](DomainQueuedSessionCommand.md) |  |  |
| **aid** | **String** |  |  |
| **created_at** | **Time** |  |  |
| **deleted_at** | **Time** |  |  |
| **id** | **String** |  |  |
| **status** | **String** |  |  |
| **updated_at** | **Time** |  |  |
| **user_id** | **String** |  |  |
| **user_uuid** | **String** |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::DomainQueuedSessionJob.new(
  commands: null,
  aid: null,
  created_at: null,
  deleted_at: null,
  id: null,
  status: null,
  updated_at: null,
  user_id: null,
  user_uuid: null
)
```

