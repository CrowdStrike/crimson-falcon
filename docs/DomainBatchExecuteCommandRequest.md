# Falcon::DomainBatchExecuteCommandRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **base_command** | **String** |  |  |
| **batch_id** | **String** |  |  |
| **command_string** | **String** |  |  |
| **optional_hosts** | **Array&lt;String&gt;** |  |  |
| **persist_all** | **Boolean** |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::DomainBatchExecuteCommandRequest.new(
  base_command: null,
  batch_id: null,
  command_string: null,
  optional_hosts: null,
  persist_all: null
)
```

