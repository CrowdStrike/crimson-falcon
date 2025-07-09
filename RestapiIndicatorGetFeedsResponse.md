# Falcon::RestapiIndicatorGetFeedsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;RestapiIndicatorGetFeedsItem&gt;**](RestapiIndicatorGetFeedsItem.md) |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::RestapiIndicatorGetFeedsResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```

