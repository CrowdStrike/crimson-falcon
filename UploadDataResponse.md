# Falcon::UploadDataResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;Error7bbeca3b1c2440f19c0730f62b3b6ef4&gt;**](Error7bbeca3b1c2440f19c0730f62b3b6ef4.md) |  | [optional] |
| **meta** | [**MetaE4ad714b314449299eca720f9d63b718**](MetaE4ad714b314449299eca720f9d63b718.md) |  | [optional] |
| **resources** | [**Array&lt;DataTransactionResponseDtoCdc34dae7da648de941209e7e6a30770&gt;**](DataTransactionResponseDtoCdc34dae7da648de941209e7e6a30770.md) |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::UploadDataResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```

