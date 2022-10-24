# Falcon::DomainBatchGetCommandRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **batch_id** | **String** |  |  |
| **file_path** | **String** |  |  |
| **optional_hosts** | **Array&lt;String&gt;** |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::DomainBatchGetCommandRequest.new(
  batch_id: null,
  file_path: null,
  optional_hosts: null
)
```

