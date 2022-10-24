# Falcon::RequestsUpdateFirewallPolicyV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** | The new description to assign to the policy | [optional] |
| **id** | **String** | The id of the policy to update |  |
| **name** | **String** | The new name to assign to the policy | [optional] |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::RequestsUpdateFirewallPolicyV1.new(
  description: null,
  id: null,
  name: null
)
```

