# Falcon::DomainAWSAccountV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created_at** | **Time** |  |  |
| **deleted_at** | **Time** |  |  |
| **id** | **Integer** |  |  |
| **updated_at** | **Time** |  |  |
| **account_id** | **String** | 12 digit AWS provided unique identifier for the account. | [optional] |
| **aws_cloudtrail_bucket_name** | **String** | AWS CloudTrail bucket name to store logs. | [optional] |
| **aws_cloudtrail_region** | **String** | AWS CloudTrail region. | [optional] |
| **aws_permissions_status** | [**Array&lt;DomainPermission&gt;**](DomainPermission.md) | Permissions status returned via API. |  |
| **cid** | **String** |  | [optional] |
| **cloudformation_url** | **String** |  | [optional] |
| **eventbus_name** | **String** |  | [optional] |
| **external_id** | **String** | ID assigned for use with cross account IAM role access. | [optional] |
| **iam_role_arn** | **String** | The full arn of the IAM role created in this account to control access. | [optional] |
| **intermediate_role_arn** | **String** |  | [optional] |
| **is_master** | **Boolean** |  |  |
| **organization_id** | **String** | Up to 34 character AWS provided unique identifier for the organization. | [optional] |
| **status** | **String** | Account registration status. | [optional] |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::DomainAWSAccountV2.new(
  created_at: null,
  deleted_at: null,
  id: null,
  updated_at: null,
  account_id: null,
  aws_cloudtrail_bucket_name: null,
  aws_cloudtrail_region: null,
  aws_permissions_status: null,
  cid: null,
  cloudformation_url: null,
  eventbus_name: null,
  external_id: null,
  iam_role_arn: null,
  intermediate_role_arn: null,
  is_master: null,
  organization_id: null,
  status: null
)
```

