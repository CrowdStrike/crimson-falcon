# Falcon::DomainRegisterActionsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **actions** | [**Array&lt;DomainCreateActionRequest&gt;**](DomainCreateActionRequest.md) |  |  |
| **rule_id** | **String** |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::DomainRegisterActionsRequest.new(
  actions: null,
  rule_id: null
)
```

