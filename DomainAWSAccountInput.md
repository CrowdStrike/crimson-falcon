# Falcon::DomainAWSAccountInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_number** | **String** |  |  |
| **batch_regions** | [**Array&lt;DomainAWSBatchClusterRegion&gt;**](DomainAWSBatchClusterRegion.md) |  |  |
| **iam_external_id** | **String** |  |  |
| **iam_role_arn** | **String** |  |  |
| **kms_alias** | **String** |  |  |
| **processing_account** | **String** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainAWSAccountInput.new(
  account_number: null,
  batch_regions: null,
  iam_external_id: null,
  iam_role_arn: null,
  kms_alias: null,
  processing_account: null
)
```

