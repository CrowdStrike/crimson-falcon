# Falcon::ApiRulesResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) |  | [optional] |
| **meta** | [**MsaspecMetaInfo**](MsaspecMetaInfo.md) |  |  |
| **resources** | [**Array&lt;ApiRuleV1&gt;**](ApiRuleV1.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ApiRulesResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```

