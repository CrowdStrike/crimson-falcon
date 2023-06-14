# Falcon::MlscannerapiScanV1Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) |  |  |
| **meta** | [**MlscannerapiMetaInfo**](MlscannerapiMetaInfo.md) |  |  |
| **resources** | [**Array&lt;MlscannerapiSamplesScanResult&gt;**](MlscannerapiSamplesScanResult.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::MlscannerapiScanV1Response.new(
  errors: null,
  meta: null,
  resources: null
)
```

