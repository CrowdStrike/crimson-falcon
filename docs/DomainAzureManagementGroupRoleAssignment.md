# Falcon::DomainAzureManagementGroupRoleAssignment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **management_group_id** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **role_definition_id** | **String** |  | [optional] |
| **status** | **String** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainAzureManagementGroupRoleAssignment.new(
  management_group_id: null,
  name: null,
  role_definition_id: null,
  status: null
)
```

