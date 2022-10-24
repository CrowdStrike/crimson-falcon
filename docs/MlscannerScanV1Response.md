# Falcon::MlscannerScanV1Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **meta** | [**MlscannerMetaInfo**](MlscannerMetaInfo.md) |  |  |
| **resources** | [**Array&lt;MlscannerSamplesScanResult&gt;**](MlscannerSamplesScanResult.md) |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::MlscannerScanV1Response.new(
  errors: null,
  meta: null,
  resources: null
)
```

