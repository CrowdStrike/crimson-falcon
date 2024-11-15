# Falcon::DomainAWSAccountResourceMetadata

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **aws_cloudtrail_bucket_name** | **String** | AWS CloudTrail bucket name to store logs. | [optional] |
| **aws_cloudtrail_region** | **String** | AWS CloudTrail region. | [optional] |
| **aws_eventbus_arn** | **String** | AWS Eventbus ARN. | [optional] |
| **eventbus_name** | **String** |  | [optional] |
| **external_id** | **String** | ID assigned for use with cross account IAM role access. | [optional] |
| **iam_role_arn** | **String** | The full arn of the IAM role created in this account to control access. | [optional] |
| **intermediate_role_arn** | **String** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainAWSAccountResourceMetadata.new(
  aws_cloudtrail_bucket_name: null,
  aws_cloudtrail_region: null,
  aws_eventbus_arn: null,
  eventbus_name: null,
  external_id: null,
  iam_role_arn: null,
  intermediate_role_arn: null
)
```

