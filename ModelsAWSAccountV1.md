# Falcon::ModelsAWSAccountV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **access_health** | [**ModelsAwsAccountAccessHealth**](ModelsAwsAccountAccessHealth.md) |  | [optional] |
| **_alias** | **String** | Alias/Name associated with the account. This is only updated once the account is in a registered state. | [optional] |
| **cid** | **String** |  | [optional] |
| **cloudformation_stack_id** | **String** | Unique identifier for the cloudformation stack id used for provisioning. | [optional] |
| **cloudformation_url** | **String** | URL of the CloudFormation template to execute. This is returned when mode is to set &#39;cloudformation&#39; when provisioning. | [optional] |
| **cloudtrail_bucket_owner_id** | **String** | The 12 digit AWS account which is hosting the S3 bucket containing cloudtrail logs for this account. If this field is set, it takes precedence of the settings level field. | [optional] |
| **cloudtrail_bucket_region** | **String** | Region where the S3 bucket containing cloudtrail logs resides. This is only set if using cloudformation to provision and create the trail. | [optional] |
| **created_timestamp** | **String** | Timestamp of when the account was first provisioned within CrowdStrike&#39;s system.&#39; | [optional] |
| **external_id** | **String** | ID assigned for use with cross account IAM role access. | [optional] |
| **iam_role_arn** | **String** | The full arn of the IAM role created in this account to control access. | [optional] |
| **id** | **String** | 12 digit AWS provided unique identifier for the account. | [optional] |
| **last_modified_timestamp** | **String** | Timestamp of when the account was last modified. | [optional] |
| **last_scanned_timestamp** | **String** | Timestamp of when the account was scanned. | [optional] |
| **policy_version** | **String** | Current version of permissions associated with IAM role and granted access. | [optional] |
| **provisioning_state** | **String** | Provisioning state of the account. Values can be; initiated, registered, unregistered. | [optional] |
| **rate_limit_reqs** | **Integer** | Rate limiting setting to control the maximum number of requests that can be made within the rate_limit_time duration. | [optional] |
| **rate_limit_time** | **Integer** | Rate limiting setting to control the number of seconds for which rate_limit_reqs applies. | [optional] |
| **template_version** | **String** | Current version of cloudformation template used to manage access. | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ModelsAWSAccountV1.new(
  access_health: null,
  _alias: null,
  cid: null,
  cloudformation_stack_id: null,
  cloudformation_url: null,
  cloudtrail_bucket_owner_id: null,
  cloudtrail_bucket_region: null,
  created_timestamp: null,
  external_id: null,
  iam_role_arn: null,
  id: null,
  last_modified_timestamp: null,
  last_scanned_timestamp: null,
  policy_version: null,
  provisioning_state: null,
  rate_limit_reqs: null,
  rate_limit_time: null,
  template_version: null
)
```

