# Falcon::ApiRuleGroupsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) |  | [optional] |
| **meta** | [**MsaspecMetaInfo**](MsaspecMetaInfo.md) |  |  |
| **resources** | [**Array&lt;ApiRuleGroupV1&gt;**](ApiRuleGroupV1.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ApiRuleGroupsResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```

