# Falcon::DomainAggregateFailedRulesCountBySeverityResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;ModelsRulesFailedBySeverity&gt;**](ModelsRulesFailedBySeverity.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainAggregateFailedRulesCountBySeverityResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```

