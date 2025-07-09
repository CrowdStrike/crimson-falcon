# Falcon::JsonschemaAuthorization

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_scope** | **String** |  | [optional] |
| **complex_permissions** | [**JsonschemaComplexPermissions**](JsonschemaComplexPermissions.md) |  |  |
| **feature_flag** | **String** |  |  |
| **permissions** | [**Array&lt;JsonschemaPermission&gt;**](JsonschemaPermission.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::JsonschemaAuthorization.new(
  api_scope: null,
  complex_permissions: null,
  feature_flag: null,
  permissions: null
)
```

