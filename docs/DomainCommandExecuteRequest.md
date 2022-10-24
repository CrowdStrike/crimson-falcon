# Falcon::DomainCommandExecuteRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **base_command** | **String** |  |  |
| **command_string** | **String** |  |  |
| **device_id** | **String** |  |  |
| **id** | **Integer** |  |  |
| **persist** | **Boolean** |  |  |
| **session_id** | **String** |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::DomainCommandExecuteRequest.new(
  base_command: null,
  command_string: null,
  device_id: null,
  id: null,
  persist: null,
  session_id: null
)
```

