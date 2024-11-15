# Falcon::DomainAggregateFailedRulesByImagesResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;ModelsImagesWithRulesFailed&gt;**](ModelsImagesWithRulesFailed.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainAggregateFailedRulesByImagesResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```

