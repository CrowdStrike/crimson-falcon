# Falcon::ModelsAWSCustomerSettingsRequestV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloudtrail_bucket_owner_id** | **String** | The 12 digit AWS account which is hosting the centralized S3 bucket of containing cloudtrail logs from multiple accounts. | [optional] |
| **static_external_id** | **String** | By setting this value, all subsequent accounts that are provisioned will default to using this value as their external ID. | [optional] |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::ModelsAWSCustomerSettingsRequestV1.new(
  cloudtrail_bucket_owner_id: null,
  static_external_id: null
)
```

