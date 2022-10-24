# Falcon::RegistrationExternalIOAResources

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **confidence** | **String** |  | [optional] |
| **events** | [**Array&lt;RegistrationIOAEvent&gt;**](RegistrationIOAEvent.md) |  |  |
| **max_score** | **Integer** |  | [optional] |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::RegistrationExternalIOAResources.new(
  confidence: null,
  events: null,
  max_score: null
)
```

