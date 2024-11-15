# Falcon::RestAWSAccountValidated

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **conditions** | [**Array&lt;DomainCloudCondition&gt;**](DomainCloudCondition.md) |  | [optional] |
| **iam_service_permissions_status** | [**Array&lt;DomainProductPermission&gt;**](DomainProductPermission.md) | Permissions status for each product returned via API. |  |
| **status** | [**Array&lt;DomainProductFeaturesStatus&gt;**](DomainProductFeaturesStatus.md) | Permissions status for each product returned via API. |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::RestAWSAccountValidated.new(
  account_id: null,
  conditions: null,
  iam_service_permissions_status: null,
  status: null
)
```

