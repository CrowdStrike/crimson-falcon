# Falcon::RegistrationAzureAccountV1Ext

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created_at** | **Time** |  |  |
| **deleted_at** | **Time** |  |  |
| **id** | **Integer** |  |  |
| **updated_at** | **Time** |  |  |
| **account_type** | **String** |  | [optional] |
| **azure_permissions_status** | [**Array&lt;DomainPermission&gt;**](DomainPermission.md) | Permissions status returned via API. |  |
| **cid** | **String** |  |  |
| **client_id** | **String** |  | [optional] |
| **conditions** | [**Array&lt;DomainCondition&gt;**](DomainCondition.md) |  | [optional] |
| **credentials_end_date** | **Time** |  | [optional] |
| **credentials_type** | **String** |  | [optional] |
| **default_subscription_id** | **String** | Default Azure Subscription ID to provision shared IOA infrastructure. | [optional] |
| **object_id** | **String** |  | [optional] |
| **public_certificate** | **String** |  | [optional] |
| **public_certificate_raw** | **String** |  | [optional] |
| **role_assignments** | [**Array&lt;DomainAzureRoleAssignment&gt;**](DomainAzureRoleAssignment.md) |  | [optional] |
| **show_modal** | **Boolean** | Whether to show modal on the UI instructing existing D4C Azure customer to reregister subscriptions for CSPM. |  |
| **status** | **String** | Account registration status. | [optional] |
| **subscription_id** | **String** | Azure Subscription ID. | [optional] |
| **tenant_id** | **String** | Azure Tenant ID to use. | [optional] |
| **years_valid** | **Integer** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::RegistrationAzureAccountV1Ext.new(
  created_at: null,
  deleted_at: null,
  id: null,
  updated_at: null,
  account_type: null,
  azure_permissions_status: null,
  cid: null,
  client_id: null,
  conditions: null,
  credentials_end_date: null,
  credentials_type: null,
  default_subscription_id: null,
  object_id: null,
  public_certificate: null,
  public_certificate_raw: null,
  role_assignments: null,
  show_modal: null,
  status: null,
  subscription_id: null,
  tenant_id: null,
  years_valid: null
)
```

