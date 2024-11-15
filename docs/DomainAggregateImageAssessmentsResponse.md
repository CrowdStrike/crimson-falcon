# Falcon::DomainAggregateImageAssessmentsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**DomainComplianceFindingsGroupedByImagesWithScroll**](DomainComplianceFindingsGroupedByImagesWithScroll.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainAggregateImageAssessmentsResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```

