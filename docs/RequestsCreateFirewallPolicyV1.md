# Falcon::RequestsCreateFirewallPolicyV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **clone_id** | **String** | If specified the firewall rules of the firewall policy identified by the id will be used | [optional] |
| **description** | **String** | The description to use when creating the policy | [optional] |
| **name** | **String** | The name to use when creating the policy |  |
| **platform_name** | **String** | The name of the platform |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::RequestsCreateFirewallPolicyV1.new(
  clone_id: null,
  description: null,
  name: null,
  platform_name: null
)
```

