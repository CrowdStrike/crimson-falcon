# Falcon::DomainUserActionRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action** | [**DomainUserAction**](DomainUserAction.md) |  |  |
| **ids** | **Array&lt;String&gt;** | User ID(s). |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::DomainUserActionRequest.new(
  action: null,
  ids: null
)
```

