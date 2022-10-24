# Falcon::MlscannerSamplesScanResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cid** | **String** |  |  |
| **created_timestamp** | **String** |  | [optional] |
| **id** | **String** |  |  |
| **samples** | [**Array&lt;MlscannerScannedSample&gt;**](MlscannerScannedSample.md) |  |  |
| **status** | **String** |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::MlscannerSamplesScanResult.new(
  cid: null,
  created_timestamp: null,
  id: null,
  samples: null,
  status: null
)
```

