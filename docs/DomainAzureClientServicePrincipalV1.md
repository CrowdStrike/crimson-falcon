# Falcon::DomainAzureClientServicePrincipalV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_type** | **String** |  | [optional] |
| **behavior_assessment_override** | **Boolean** |  | [optional] |
| **cid** | **String** |  |  |
| **client_id** | **String** |  | [optional] |
| **conditions** | [**Array&lt;StatemgmtCondition&gt;**](StatemgmtCondition.md) |  | [optional] |
| **cspm_enabled** | **Boolean** | If the account has CSPM enabled. |  |
| **default_subscription_id** | **String** |  | [optional] |
| **encrypted_private_key** | **String** |  | [optional] |
| **is_shared_client** | **Boolean** |  |  |
| **public_certificate** | **String** |  | [optional] |
| **resource_permissions** | [**Array&lt;AzureResourcePermission&gt;**](AzureResourcePermission.md) |  | [optional] |
| **tenant_id** | **String** |  |  |
| **x5t** | **String** |  | [optional] |
| **obj_id** | **String** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainAzureClientServicePrincipalV1.new(
  account_type: null,
  behavior_assessment_override: null,
  cid: null,
  client_id: null,
  conditions: null,
  cspm_enabled: null,
  default_subscription_id: null,
  encrypted_private_key: null,
  is_shared_client: null,
  public_certificate: null,
  resource_permissions: null,
  tenant_id: null,
  x5t: null,
  obj_id: null
)
```

