# Falcon::RegistrationAWSAccountPatch

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **behavior_assessment_enabled** | **Boolean** |  |  |
| **cloudtrail_region** | **String** |  | [optional] |
| **deployment_method** | **String** |  | [optional] |
| **dspm_enabled** | **Boolean** |  |  |
| **dspm_role** | **String** |  | [optional] |
| **environment** | **String** |  | [optional] |
| **falcon_client_id** | **String** |  | [optional] |
| **iam_role_arn** | **String** |  |  |
| **remediation_region** | **String** |  | [optional] |
| **remediation_tou_accepted** | **Time** |  | [optional] |
| **root_stack_id** | **String** |  | [optional] |
| **sensor_management_enabled** | **Boolean** |  |  |
| **target_ous** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::RegistrationAWSAccountPatch.new(
  account_id: null,
  behavior_assessment_enabled: null,
  cloudtrail_region: null,
  deployment_method: null,
  dspm_enabled: null,
  dspm_role: null,
  environment: null,
  falcon_client_id: null,
  iam_role_arn: null,
  remediation_region: null,
  remediation_tou_accepted: null,
  root_stack_id: null,
  sensor_management_enabled: null,
  target_ous: null
)
```

