# Falcon::DomainRuleEntitiesResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DomainRule&gt;**](DomainRule.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainRuleEntitiesResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```

