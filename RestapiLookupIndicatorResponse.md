# Falcon::RestapiLookupIndicatorResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;FigapiLookupIndicator&gt;**](FigapiLookupIndicator.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::RestapiLookupIndicatorResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```

