# Falcon::RegistrationAWSAccountExtV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **account_type** | **String** |  | [optional] |
| **behavior_assessment_enabled** | **Boolean** |  | [optional] |
| **cloudtrail_region** | **String** |  |  |
| **iam_role_arn** | **String** |  |  |
| **is_master** | **Boolean** |  | [optional] |
| **organization_id** | **String** |  |  |
| **sensor_management_enabled** | **Boolean** |  | [optional] |
| **use_existing_cloudtrail** | **Boolean** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::RegistrationAWSAccountExtV2.new(
  account_id: null,
  account_type: null,
  behavior_assessment_enabled: null,
  cloudtrail_region: null,
  iam_role_arn: null,
  is_master: null,
  organization_id: null,
  sensor_management_enabled: null,
  use_existing_cloudtrail: null
)
```

