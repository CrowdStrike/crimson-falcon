# Falcon::DomainAWSAccountV2

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
| **aws_cloudtrail_bucket_name** | **String** | AWS CloudTrail bucket name to store logs. | [optional] |
| **aws_cloudtrail_region** | **String** | AWS CloudTrail region. | [optional] |
| **aws_eventbus_arn** | **String** | AWS Eventbus ARN. | [optional] |
| **aws_permissions_status** | [**Array&lt;DomainPermission&gt;**](DomainPermission.md) | Permissions status returned via API. |  |
| **behavior_assessment_enabled** | **Boolean** |  | [optional] |
| **cid** | **String** |  | [optional] |
| **cloud_scopes** | [**Array&lt;DomainCloudScope&gt;**](DomainCloudScope.md) |  | [optional] |
| **cloudformation_url** | **String** |  | [optional] |
| **conditions** | [**Array&lt;DomainCondition&gt;**](DomainCondition.md) |  | [optional] |
| **cspm_enabled** | **Boolean** |  | [optional] |
| **d4c** | [**DomainAWSD4CAccountV1**](DomainAWSD4CAccountV1.md) |  | [optional] |
| **d4c_migrated** | **Boolean** |  | [optional] |
| **dspm_enabled** | **Boolean** |  | [optional] |
| **dspm_role_arn** | **String** |  | [optional] |
| **environment** | **String** |  | [optional] |
| **eventbus_name** | **String** |  | [optional] |
| **external_id** | **String** | ID assigned for use with cross account IAM role access. | [optional] |
| **iam_role_arn** | **String** | The full arn of the IAM role created in this account to control access. | [optional] |
| **intermediate_role_arn** | **String** |  | [optional] |
| **inventory_filter** | [**Array&lt;DomainAWSInventoryFilterSetting&gt;**](DomainAWSInventoryFilterSetting.md) |  |  |
| **is_cspm_lite** | **Boolean** | Is CSPM Lite enabled. | [optional] |
| **is_custom_rolename** | **Boolean** |  |  |
| **is_master** | **Boolean** |  | [optional] |
| **organization_id** | **String** | Up to 34 character AWS provided unique identifier for the organization. | [optional] |
| **products** | **Array&lt;String&gt;** |  | [optional] |
| **remediation_cloudformation_url** | **String** |  | [optional] |
| **remediation_region** | **String** |  | [optional] |
| **remediation_tou_accepted** | **Time** |  | [optional] |
| **root_account_id** | **String** | 12 digit AWS provided unique identifier for the root account (of the organization this account belongs to). | [optional] |
| **root_iam_role** | **Boolean** |  | [optional] |
| **secondary_role_arn** | **String** |  | [optional] |
| **sensor_management_enabled** | **Boolean** |  |  |
| **settings** | **Object** |  | [optional] |
| **status** | **String** | Account registration status. | [optional] |
| **target_ous** | **Array&lt;String&gt;** |  | [optional] |
| **use_existing_cloudtrail** | **Boolean** |  | [optional] |
| **valid** | **Boolean** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainAWSAccountV2.new(
  created_at: null,
  deleted_at: null,
  id: null,
  updated_at: null,
  account_id: null,
  account_name: null,
  account_type: null,
  active_regions: null,
  aws_cloudtrail_bucket_name: null,
  aws_cloudtrail_region: null,
  aws_eventbus_arn: null,
  aws_permissions_status: null,
  behavior_assessment_enabled: null,
  cid: null,
  cloud_scopes: null,
  cloudformation_url: null,
  conditions: null,
  cspm_enabled: null,
  d4c: null,
  d4c_migrated: null,
  dspm_enabled: null,
  dspm_role_arn: null,
  environment: null,
  eventbus_name: null,
  external_id: null,
  iam_role_arn: null,
  intermediate_role_arn: null,
  inventory_filter: null,
  is_cspm_lite: null,
  is_custom_rolename: null,
  is_master: null,
  organization_id: null,
  products: null,
  remediation_cloudformation_url: null,
  remediation_region: null,
  remediation_tou_accepted: null,
  root_account_id: null,
  root_iam_role: null,
  secondary_role_arn: null,
  sensor_management_enabled: null,
  settings: null,
  status: null,
  target_ous: null,
  use_existing_cloudtrail: null,
  valid: null
)
```

