# Falcon::RulegroupsRulesResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) |  | [optional] |
| **meta** | [**MsaspecMetaInfo**](MsaspecMetaInfo.md) |  |  |
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

