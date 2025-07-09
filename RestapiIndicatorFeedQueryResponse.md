# Falcon::RestapiIndicatorFeedQueryResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **feed_name** | **String** |  | [optional] |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;RestapiIndicatorFeedQueryItem&gt;**](RestapiIndicatorFeedQueryItem.md) |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::RestapiIndicatorFeedQueryResponse.new(
  errors: null,
  feed_name: null,
  meta: null,
  resources: null
)
```

