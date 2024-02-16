# Falcon::RegistrationAzureManagementGroupV1Ext

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created_at** | **Time** |  |  |
| **deleted_at** | **Time** |  |  |
| **id** | **Integer** |  |  |
| **updated_at** | **Time** |  |  |
| **azure_management_group_id** | **String** | Azure Management Group ID. |  |
| **azure_management_group_name** | **String** | Azure Management Group Name. | [optional] |
| **azure_permissions_status** | [**Array&lt;DomainPermission&gt;**](DomainPermission.md) | Permissions status returned via API. | [optional] |
| **cid** | **String** |  |  |
| **client_id** | **String** |  | [optional] |
| **conditions** | [**Array&lt;DomainCondition&gt;**](DomainCondition.md) |  | [optional] |
| **credentials_end_date** | **Time** |  | [optional] |
| **credentials_type** | **String** |  | [optional] |
| **default_subscription_id** | **String** | Default Azure Subscription ID to provision shared IOA infrastructure. | [optional] |
| **object_id** | **String** |  | [optional] |
| **public_certificate** | **String** |  | [optional] |
| **public_certificate_raw** | **String** |  | [optional] |
| **role_assignments** | [**Array&lt;DomainAzureManagementGroupRoleAssignment&gt;**](DomainAzureManagementGroupRoleAssignment.md) |  | [optional] |
| **status** | **String** | Account registration status. | [optional] |
| **tenant_id** | **String** | Azure Tenant ID to use. |  |
| **years_valid** | **Integer** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::RegistrationAzureManagementGroupV1Ext.new(
  created_at: null,
  deleted_at: null,
  id: null,
  updated_at: null,
  azure_management_group_id: null,
  azure_management_group_name: null,
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
  status: null,
  tenant_id: null,
  years_valid: null
)
```

