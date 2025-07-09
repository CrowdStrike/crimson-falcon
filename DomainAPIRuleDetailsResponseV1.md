# Falcon::DomainAPIRuleDetailsResponseV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
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

