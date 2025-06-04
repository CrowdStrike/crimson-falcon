# Falcon::RegistrationGCPAccountValidatedV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **conditions** | [**Array&lt;StatemgmtCondition&gt;**](StatemgmtCondition.md) | Account conditions | [optional] |
| **gcp_permissions_status** | [**Array&lt;DomainPermission&gt;**](DomainPermission.md) | Permissions status |  |
| **parent_id** | **String** |  |  |
| **service_account_conditions** | [**Array&lt;StatemgmtCondition&gt;**](StatemgmtCondition.md) |  | [optional] |
| **service_account_id** | **Integer** | Service account ID | [optional] |
| **status** | **String** | Account registration status | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::RegistrationGCPAccountValidatedV1.new(
  conditions: null,
  gcp_permissions_status: null,
  parent_id: null,
  service_account_conditions: null,
  service_account_id: null,
  status: null
)
```

