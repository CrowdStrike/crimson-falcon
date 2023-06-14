# Falcon::RegistrationAWSAccountD4CExtV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **account_type** | **String** |  | [optional] |
| **cloudtrail_region** | **String** |  |  |
| **iam_role_arn** | **String** |  |  |
| **is_master** | **Boolean** |  | [optional] |
| **organization_id** | **String** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::RegistrationAWSAccountD4CExtV2.new(
  account_id: null,
  account_type: null,
  cloudtrail_region: null,
  iam_role_arn: null,
  is_master: null,
  organization_id: null
)
```

