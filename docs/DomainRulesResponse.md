# Falcon::DomainRulesResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DomainRule&gt;**](DomainRule.md) |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::DomainRulesResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```

