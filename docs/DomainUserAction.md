# Falcon::DomainUserAction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action_name** | **String** | Action name |  |
| **action_value** | **String** | Value for action, if any | [optional] |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::DomainUserAction.new(
  action_name: null,
  action_value: null
)
```

