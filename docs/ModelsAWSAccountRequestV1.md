# Falcon::ModelsAWSAccountRequestV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloudtrail_bucket_owner_id** | **String** | The 12 digit AWS account which is hosting the S3 bucket containing cloudtrail logs for this account. If this field is set, it takes precedence of the settings level field. | [optional] |
| **cloudtrail_bucket_region** | **String** | Region where the S3 bucket containing cloudtrail logs resides. | [optional] |
| **external_id** | **String** | ID assigned for use with cross account IAM role access. | [optional] |
| **iam_role_arn** | **String** | The full arn of the IAM role created in this account to control access. | [optional] |
| **id** | **String** | 12 digit AWS provided unique identifier for the account. | [optional] |
| **rate_limit_reqs** | **Integer** | Rate limiting setting to control the maximum number of requests that can be made within the rate_limit_time threshold. | [optional] |
| **rate_limit_time** | **Integer** | Rate limiting setting to control the number of seconds for which rate_limit_reqs applies. | [optional] |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::ModelsAWSAccountRequestV1.new(
  cloudtrail_bucket_owner_id: null,
  cloudtrail_bucket_region: null,
  external_id: null,
  iam_role_arn: null,
  id: null,
  rate_limit_reqs: null,
  rate_limit_time: null
)
```

