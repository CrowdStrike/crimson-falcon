# Falcon::RulegroupsRulesResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;RulegroupsRule&gt;**](RulegroupsRule.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::RulegroupsRulesResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```

