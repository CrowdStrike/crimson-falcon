# Falcon::K8sregAWSAccountResp

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **aws_permissions_status** | [**Array&lt;K8sregAWSAccountPermissionsStatus&gt;**](K8sregAWSAccountPermissionsStatus.md) |  |  |
| **cid** | **String** |  |  |
| **cloudformation_url** | **String** |  | [optional] |
| **created_at** | **Time** |  |  |
| **from_cspm** | **Boolean** |  |  |
| **iam_role_arn** | **String** |  |  |
| **is_master** | **Boolean** |  |  |
| **organization_id** | **String** |  | [optional] |
| **region** | **String** |  | [optional] |
| **status** | **String** |  |  |
| **updated_at** | **Time** |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::K8sregAWSAccountResp.new(
  account_id: null,
  aws_permissions_status: null,
  cid: null,
  cloudformation_url: null,
  created_at: null,
  from_cspm: null,
  iam_role_arn: null,
  is_master: null,
  organization_id: null,
  region: null,
  status: null,
  updated_at: null
)
```

