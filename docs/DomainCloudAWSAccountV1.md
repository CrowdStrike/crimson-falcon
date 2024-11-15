# Falcon::DomainCloudAWSAccountV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created_at** | **Time** |  |  |
| **deleted_at** | **Time** |  |  |
| **id** | **Integer** |  |  |
| **updated_at** | **Time** |  |  |
| **account_id** | **String** | 12 digit AWS provided unique identifier for the account. | [optional] |
| **account_name** | **String** | AWS account name | [optional] |
| **account_type** | **String** |  | [optional] |
| **active_regions** | **Array&lt;String&gt;** |  | [optional] |
| **cid** | **String** |  | [optional] |
| **conditions** | [**Array&lt;DomainCloudCondition&gt;**](DomainCloudCondition.md) |  | [optional] |
| **csp_events** | **Boolean** | csp live events are enabled  | [optional] |
| **environment** | **String** |  | [optional] |
| **iam_service_permissions_status** | [**Array&lt;DomainProductPermission&gt;**](DomainProductPermission.md) | Permissions status for each product returned via API. |  |
| **inventory_filter** | [**Array&lt;DomainAWSInventoryFilterSetting&gt;**](DomainAWSInventoryFilterSetting.md) |  |  |
| **is_custom_rolename** | **Boolean** |  |  |
| **is_master** | **Boolean** |  | [optional] |
| **organization_id** | **String** | Up to 34 character AWS provided unique identifier for the organization. | [optional] |
| **products** | [**Array&lt;DomainProductFeatures&gt;**](DomainProductFeatures.md) |  |  |
| **resource_metadata** | [**DomainAWSAccountResourceMetadata**](DomainAWSAccountResourceMetadata.md) |  |  |
| **root_account_id** | **String** | 12 digit AWS provided unique identifier for the root account (of the organization this account belongs to). | [optional] |
| **root_iam_role** | **Boolean** |  | [optional] |
| **status** | [**Array&lt;DomainProductFeaturesStatus&gt;**](DomainProductFeaturesStatus.md) | Account registration status for each product and feature | [optional] |
| **target_ous** | **Array&lt;String&gt;** |  | [optional] |
| **use_existing_cloudtrail** | **Boolean** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainCloudAWSAccountV1.new(
  created_at: null,
  deleted_at: null,
  id: null,
  updated_at: null,
  account_id: null,
  account_name: null,
  account_type: null,
  active_regions: null,
  cid: null,
  conditions: null,
  csp_events: null,
  environment: null,
  iam_service_permissions_status: null,
  inventory_filter: null,
  is_custom_rolename: null,
  is_master: null,
  organization_id: null,
  products: null,
  resource_metadata: null,
  root_account_id: null,
  root_iam_role: null,
  status: null,
  target_ous: null,
  use_existing_cloudtrail: null
)
```

