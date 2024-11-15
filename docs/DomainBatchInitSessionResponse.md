# Falcon::DomainBatchInitSessionResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **batch_id** | **String** |  |  |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Hash&lt;String, DomainMultiStatusSensorResponse&gt;**](DomainMultiStatusSensorResponse.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainBatchInitSessionResponse.new(
  batch_id: null,
  errors: null,
  meta: null,
  resources: null
)
```

