# Falcon::DomainAPIRuleDetailsResponseV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) |  | [optional] |
| **meta** | [**MsaspecMetaInfo**](MsaspecMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DomainAPIRuleDetailsV1&gt;**](DomainAPIRuleDetailsV1.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainAPIRuleDetailsResponseV1.new(
  errors: null,
  meta: null,
  resources: null
)
```

