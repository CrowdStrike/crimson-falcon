# Falcon::MlscannerScannedSample

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **error** | **String** |  | [optional] |
| **sha256** | **String** |  |  |
| **verdict** | **String** |  | [optional] |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::MlscannerScannedSample.new(
  error: null,
  sha256: null,
  verdict: null
)
```

