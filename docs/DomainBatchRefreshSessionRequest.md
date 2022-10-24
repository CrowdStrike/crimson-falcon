# Falcon::DomainBatchRefreshSessionRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **batch_id** | **String** |  |  |
| **hosts_to_remove** | **Array&lt;String&gt;** |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::DomainBatchRefreshSessionRequest.new(
  batch_id: null,
  hosts_to_remove: null
)
```

