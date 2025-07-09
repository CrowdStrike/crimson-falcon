# Falcon::ApiRulesResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
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

