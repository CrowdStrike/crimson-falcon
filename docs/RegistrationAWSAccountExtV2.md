# Falcon::RegistrationAWSAccountExtV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **account_type** | **String** |  | [optional] |
| **behavior_assessment_enabled** | **Boolean** |  | [optional] |
| **cloudtrail_region** | **String** |  |  |
| **deployment_method** | **String** |  | [optional] |
| **dspm_enabled** | **Boolean** |  | [optional] |
| **dspm_role** | **String** |  | [optional] |
| **falcon_client_id** | **String** |  | [optional] |
| **iam_role_arn** | **String** |  |  |
| **is_master** | **Boolean** |  | [optional] |
| **organization_id** | **String** |  |  |
| **root_stack_id** | **String** |  | [optional] |
| **sensor_management_enabled** | **Boolean** |  | [optional] |
| **target_ous** | **Array&lt;String&gt;** |  | [optional] |
| **use_existing_cloudtrail** | **Boolean** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::RegistrationAWSAccountExtV2.new(
  account_id: null,
  account_type: null,
  behavior_assessment_enabled: null,
  cloudtrail_region: null,
  deployment_method: null,
  dspm_enabled: null,
  dspm_role: null,
  falcon_client_id: null,
  iam_role_arn: null,
  is_master: null,
  organization_id: null,
  root_stack_id: null,
  sensor_management_enabled: null,
  target_ous: null,
  use_existing_cloudtrail: null
)
```

