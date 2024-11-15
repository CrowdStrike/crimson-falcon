# Falcon::RegistrationAWSAccountPatch

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **behavior_assessment_enabled** | **Boolean** |  | [optional] |
| **cloudtrail_region** | **String** |  | [optional] |
| **dspm_enabled** | **Boolean** |  | [optional] |
| **dspm_role** | **String** |  | [optional] |
| **environment** | **String** |  | [optional] |
| **iam_role_arn** | **String** |  |  |
| **remediation_region** | **String** |  | [optional] |
| **remediation_tou_accepted** | **Time** |  | [optional] |
| **sensor_management_enabled** | **Boolean** |  | [optional] |
| **target_ous** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::RegistrationAWSAccountPatch.new(
  account_id: null,
  behavior_assessment_enabled: null,
  cloudtrail_region: null,
  dspm_enabled: null,
  dspm_role: null,
  environment: null,
  iam_role_arn: null,
  remediation_region: null,
  remediation_tou_accepted: null,
  sensor_management_enabled: null,
  target_ous: null
)
```

