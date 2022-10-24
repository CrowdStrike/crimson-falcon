# Falcon::DomainAWSConfiguration

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloudtrail_bucket_owner_id** | **String** | The 12 digit AWS account which is hosting the centralized S3 bucket containing cloudtrail logs for all accounts. | [optional] |
| **created_timestamp** | **String** | Timestamp of when the settings were first provisioned within CrowdStrike&#39;s system.&#39; | [optional] |
| **last_modified_timestamp** | **String** | Timestamp of when the settings were last modified. | [optional] |
| **static_external_id** | **String** | By setting this value, all subsequent accounts that are provisioned will default to using this value as the external ID. | [optional] |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::DomainAWSConfiguration.new(
  cloudtrail_bucket_owner_id: null,
  created_timestamp: null,
  last_modified_timestamp: null,
  static_external_id: null
)
```

