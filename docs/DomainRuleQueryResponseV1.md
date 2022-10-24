# Falcon::DomainRuleQueryResponseV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;DomainReconAPIError&gt;**](DomainReconAPIError.md) | The request errors |  |
| **meta** | [**DomainRuleMetaInfo**](DomainRuleMetaInfo.md) |  |  |
| **resources** | **Array&lt;String&gt;** | The requested rule resources |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::DomainRuleQueryResponseV1.new(
  errors: null,
  meta: null,
  resources: null
)
```

