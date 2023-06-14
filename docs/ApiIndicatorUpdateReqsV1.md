# Falcon::ApiIndicatorUpdateReqsV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bulk_update** | [**ApiBulkUpdateReqV1**](ApiBulkUpdateReqV1.md) |  |  |
| **comment** | **String** |  | [optional] |
| **indicators** | [**Array&lt;ApiIndicatorUpdateReqV1&gt;**](ApiIndicatorUpdateReqV1.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ApiIndicatorUpdateReqsV1.new(
  bulk_update: null,
  comment: null,
  indicators: null
)
```

