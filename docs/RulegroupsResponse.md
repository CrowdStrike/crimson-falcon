# Falcon::RulegroupsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) |  | [optional] |
| **meta** | [**MsaspecMetaInfo**](MsaspecMetaInfo.md) |  |  |
| **resources** | [**Array&lt;RulegroupsRuleGroup&gt;**](RulegroupsRuleGroup.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::RulegroupsResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```

