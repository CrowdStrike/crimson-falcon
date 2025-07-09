# Falcon::RestapiIndicatorResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;FigapiIndicator&gt;**](FigapiIndicator.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::RestapiIndicatorResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```

