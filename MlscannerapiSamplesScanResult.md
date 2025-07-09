# Falcon::MlscannerapiSamplesScanResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cid** | **String** |  |  |
| **created_timestamp** | **String** |  | [optional] |
| **id** | **String** |  |  |
| **samples** | [**Array&lt;MlscannerapiScannedSample&gt;**](MlscannerapiScannedSample.md) |  |  |
| **status** | **String** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::MlscannerapiSamplesScanResult.new(
  cid: null,
  created_timestamp: null,
  id: null,
  samples: null,
  status: null
)
```

