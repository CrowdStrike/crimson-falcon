# Falcon::DomainCondition

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **last_transition** | **Time** |  |  |
| **message** | **String** |  | [optional] |
| **reason** | **String** |  | [optional] |
| **status** | **String** |  |  |
| **type** | **String** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainCondition.new(
  last_transition: null,
  message: null,
  reason: null,
  status: null,
  type: null
)
```

