# Falcon::FalconxIntelXReportV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **malware_config** | [**FalconxMalwareConfig**](FalconxMalwareConfig.md) |  | [optional] |
| **sha256** | **String** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::FalconxIntelXReportV1.new(
  malware_config: null,
  sha256: null
)
```

