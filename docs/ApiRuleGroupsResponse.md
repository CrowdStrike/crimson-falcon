# Falcon::ApiRuleGroupsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
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

