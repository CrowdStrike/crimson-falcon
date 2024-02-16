# Falcon::ModelsSnapshotAccountStatus

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **account_status** | **String** |  |  |
| **batch_regions** | [**Array&lt;DomainAWSBatchClusterRegion&gt;**](DomainAWSBatchClusterRegion.md) |  |  |
| **cloud_provider** | **Integer** |  |  |
| **iam_external_id** | **String** |  |  |
| **iam_role_arn** | **String** |  |  |
| **processing_account** | **String** |  |  |
| **regions** | **Array&lt;String&gt;** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ModelsSnapshotAccountStatus.new(
  account_id: null,
  account_status: null,
  batch_regions: null,
  cloud_provider: null,
  iam_external_id: null,
  iam_role_arn: null,
  processing_account: null,
  regions: null
)
```

