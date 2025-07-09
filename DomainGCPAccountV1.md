# Falcon::DomainGCPAccountV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created_at** | **Time** |  |  |
| **deleted_at** | **Time** |  |  |
| **id** | **Integer** |  |  |
| **updated_at** | **Time** |  |  |
| **cid** | **String** |  |  |
| **cloud_scopes** | [**Array&lt;DomainCloudScope&gt;**](DomainCloudScope.md) |  | [optional] |
| **conditions** | [**Array&lt;StatemgmtCondition&gt;**](StatemgmtCondition.md) |  | [optional] |
| **cspm_enabled** | **Boolean** |  |  |
| **display_name** | **String** | GCP Display Name | [optional] |
| **environment** | **String** |  | [optional] |
| **folder_id** | **String** | GCP folder ID | [optional] |
| **folder_name** | **String** | GCP folder Name | [optional] |
| **gcp_permissions_status** | [**Array&lt;DomainPermission&gt;**](DomainPermission.md) | Permissions status returned via API. |  |
| **organization_id** | **String** | GCP organization ID | [optional] |
| **organization_name** | **String** | GCP organization name | [optional] |
| **parent_id** | **String** | GCP Account ID for organization/folder/projects. |  |
| **parent_type** | **String** | GCP Parent Type. | [optional] |
| **project_id** | **String** | GCP Project ID | [optional] |
| **service_account_client_email** | **String** |  | [optional] |
| **service_account_client_id** | **String** |  | [optional] |
| **service_account_conditions** | [**Array&lt;StatemgmtCondition&gt;**](StatemgmtCondition.md) |  | [optional] |
| **service_account_id** | **Integer** | GCP service account ID | [optional] |
| **service_account_private_key_id** | **String** |  | [optional] |
| **service_account_project_id** | **String** |  |  |
| **status** | **String** | Account registration status. | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainGCPAccountV1.new(
  created_at: null,
  deleted_at: null,
  id: null,
  updated_at: null,
  cid: null,
  cloud_scopes: null,
  conditions: null,
  cspm_enabled: null,
  display_name: null,
  environment: null,
  folder_id: null,
  folder_name: null,
  gcp_permissions_status: null,
  organization_id: null,
  organization_name: null,
  parent_id: null,
  parent_type: null,
  project_id: null,
  service_account_client_email: null,
  service_account_client_id: null,
  service_account_conditions: null,
  service_account_id: null,
  service_account_private_key_id: null,
  service_account_project_id: null,
  status: null
)
```

