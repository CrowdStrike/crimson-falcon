# Falcon::EmpowerapiMsaFalconScriptResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;EmpowerapiFalconScript&gt;**](EmpowerapiFalconScript.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::EmpowerapiMsaFalconScriptResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```

