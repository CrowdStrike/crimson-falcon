# Falcon::ApiMsaProcessDetailResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;ApiProcessDetail&gt;**](ApiProcessDetail.md) |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::ApiMsaProcessDetailResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```

