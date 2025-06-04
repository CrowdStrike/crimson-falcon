# Falcon::AzureDBRoleAssignment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  | [optional] |
| **role_definition_id** | **String** |  | [optional] |
| **scope_id** | **String** |  | [optional] |
| **scope_type** | **String** |  | [optional] |
| **status** | **String** |  |  |
| **subscription_id** | **String** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::AzureDBRoleAssignment.new(
  name: null,
  role_definition_id: null,
  scope_id: null,
  scope_type: null,
  status: null,
  subscription_id: null
)
```

