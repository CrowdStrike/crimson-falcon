# Falcon::DomainEntityActionRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action_parameters** | [**Array&lt;DomainActionParameter&gt;**](DomainActionParameter.md) | Collection of Action Parameter(s). | [optional] |
| **ids** | **Array&lt;String&gt;** | Incident ID(s). |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainEntityActionRequest.new(
  action_parameters: null,
  ids: null
)
```

