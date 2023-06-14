# Falcon::ApiRuleTypesResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) |  | [optional] |
| **meta** | [**MsaspecMetaInfo**](MsaspecMetaInfo.md) |  |  |
| **resources** | [**Array&lt;ApiRuleTypeV1&gt;**](ApiRuleTypeV1.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ApiRuleTypesResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```

