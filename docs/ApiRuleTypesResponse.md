# Falcon::ApiRuleTypesResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;ApiRuleTypeV1&gt;**](ApiRuleTypeV1.md) |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::ApiRuleTypesResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```

