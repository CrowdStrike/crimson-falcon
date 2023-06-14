# Falcon::DomainRuleEntitiesResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) |  | [optional] |
| **meta** | [**MsaspecMetaInfo**](MsaspecMetaInfo.md) |  |  |
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

