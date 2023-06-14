# Falcon::DomainAzureClientServicePrincipalV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_type** | **String** |  | [optional] |
| **behavior_assessment_override** | **Boolean** |  | [optional] |
| **cid** | **String** |  |  |
| **client_id** | **String** |  | [optional] |
| **conditions** | [**Array&lt;DomainCondition&gt;**](DomainCondition.md) |  | [optional] |
| **cspm_enabled** | **Boolean** | If the account has CSPM enabled. |  |
| **default_subscription_id** | **String** |  | [optional] |
| **encrypted_private_key** | **String** |  | [optional] |
| **object_id** | **String** |  | [optional] |
| **public_certificate** | **String** |  | [optional] |
| **resource_permissions** | [**Array&lt;DomainAzureResourcePermission&gt;**](DomainAzureResourcePermission.md) |  | [optional] |
| **tenant_id** | **String** |  |  |
| **x5t** | **String** |  | [optional] |

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
  object_id: null,
  public_certificate: null,
  resource_permissions: null,
  tenant_id: null,
  x5t: null
)
```

