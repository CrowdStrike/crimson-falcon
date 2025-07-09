# Falcon::SensorUpdateBuildRespV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **build** | **String** |  |  |
| **platform** | **String** |  |  |
| **sensor_version** | **String** |  |  |
| **stage** | **String** | The release stage this build is in |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::SensorUpdateBuildRespV1.new(
  build: null,
  platform: null,
  sensor_version: null,
  stage: null
)
```

