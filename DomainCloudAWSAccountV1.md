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
| **cloudformation_stack_arn** | **String** |  | [optional] |
| **cloudformation_update_url** | **String** |  | [optional] |
| **cloudformation_url** | **String** |  | [optional] |
| **conditions** | [**Array&lt;DomainCloudCondition&gt;**](DomainCloudCondition.md) |  | [optional] |
| **csp_events** | **Boolean** | csp live events are enabled  | [optional] |
| **environment** | **String** |  | [optional] |
| **falcon_client_id** | **String** |  | [optional] |
| **iam_service_permissions_status** | [**Array&lt;DomainProductPermission&gt;**](DomainProductPermission.md) | Permissions status for each product returned via API. |  |
| **inventory_filter** | [**Array&lt;DomainAWSInventoryFilterSetting&gt;**](DomainAWSInventoryFilterSetting.md) |  |  |
| **is_custom_rolename** | **Boolean** |  |  |
| **is_delegated_admin** | **Boolean** |  | [optional] |
| **is_master** | **Boolean** |  | [optional] |
| **organization_id** | **String** | Up to 34 character AWS provided unique identifier for the organization. | [optional] |
| **products** | [**Array&lt;DomainProductFeatures&gt;**](DomainProductFeatures.md) |  |  |
| **registration_status** | **String** |  | [optional] |
| **resource_metadata** | [**DomainAWSAccountResourceMetadata**](DomainAWSAccountResourceMetadata.md) |  |  |
| **resource_name_prefix** | **String** |  | [optional] |
| **resource_name_suffix** | **String** |  | [optional] |
| **root_account_id** | **String** | 12 digit AWS provided unique identifier for the root account (of the organization this account belongs to). | [optional] |
| **root_iam_role** | **Boolean** |  | [optional] |
| **s3_url** | **String** |  | [optional] |
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
  cloudformation_stack_arn: null,
  cloudformation_update_url: null,
  cloudformation_url: null,
  conditions: null,
  csp_events: null,
  environment: null,
  falcon_client_id: null,
  iam_service_permissions_status: null,
  inventory_filter: null,
  is_custom_rolename: null,
  is_delegated_admin: null,
  is_master: null,
  organization_id: null,
  products: null,
  registration_status: null,
  resource_metadata: null,
  resource_name_prefix: null,
  resource_name_suffix: null,
  root_account_id: null,
  root_iam_role: null,
  s3_url: null,
  status: null,
  target_ous: null,
  use_existing_cloudtrail: null
)
```

