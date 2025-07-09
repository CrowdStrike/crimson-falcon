# Falcon::RegistrationGCPServiceAccountPatchV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_email** | **String** |  | [optional] |
| **client_id** | **String** |  | [optional] |
| **private_key** | **String** |  | [optional] |
| **private_key_id** | **String** |  | [optional] |
| **project_id** | **String** |  | [optional] |
| **service_account_conditions** | [**Array&lt;StatemgmtCondition&gt;**](StatemgmtCondition.md) |  | [optional] |
| **service_account_id** | **Integer** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::RegistrationGCPServiceAccountPatchV1.new(
  client_email: null,
  client_id: null,
  private_key: null,
  private_key_id: null,
  project_id: null,
  service_account_conditions: null,
  service_account_id: null
)
```

