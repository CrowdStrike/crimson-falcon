# Falcon::ProcessesapiMsaProcessDetailResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) |  |  |
| **meta** | [**MsaspecMetaInfo**](MsaspecMetaInfo.md) |  |  |
| **resources** | [**Array&lt;ProcessesapiProcessDetail&gt;**](ProcessesapiProcessDetail.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ProcessesapiMsaProcessDetailResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```

