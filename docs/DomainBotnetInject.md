# Falcon::DomainBotnetInject

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **inject** | **String** | The injected data. Populated for inject botnets |  |
| **pattern** | **String** | The targeted pattern of data. Populated for inject botnets |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::DomainBotnetInject.new(
  inject: null,
  pattern: null
)
```

