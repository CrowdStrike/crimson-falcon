# Falcon::DomainBatchInitSessionRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **existing_batch_id** | **String** |  |  |
| **host_ids** | **Array&lt;String&gt;** |  |  |
| **queue_offline** | **Boolean** |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::DomainBatchInitSessionRequest.new(
  existing_batch_id: null,
  host_ids: null,
  queue_offline: null
)
```

