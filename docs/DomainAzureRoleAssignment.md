# Falcon::DomainAzureRoleAssignment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  | [optional] |
| **role_definition_id** | **String** |  | [optional] |
| **status** | **String** |  |  |
| **subscription_id** | **String** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainAzureRoleAssignment.new(
  name: null,
  role_definition_id: null,
  status: null,
  subscription_id: null
)
```

