# Falcon::AssetsComplianceResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**RestCursorAndLimitMetaInfo**](RestCursorAndLimitMetaInfo.md) |  | [optional] |
| **resources** | [**Array&lt;ResourcesComplianceControl&gt;**](ResourcesComplianceControl.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::AssetsComplianceResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```

