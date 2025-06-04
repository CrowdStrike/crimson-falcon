# Falcon::V2AgentCoverage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **iar_coverage** | **Boolean** |  | [optional] |
| **iar_last_seen** | **String** |  | [optional] |
| **kac_aid** | **String** |  | [optional] |
| **kac_config_build** | **String** |  | [optional] |
| **kac_coverage** | **Boolean** |  | [optional] |
| **kac_last_seen** | **String** |  | [optional] |
| **kpa_coverage** | **Boolean** |  | [optional] |
| **kpa_last_seen** | **String** |  | [optional] |
| **linux_sensor_aid** | **String** |  | [optional] |
| **linux_sensor_config_build** | **String** |  | [optional] |
| **linux_sensor_coverage** | **Boolean** |  | [optional] |
| **linux_sensor_last_seen** | **String** |  | [optional] |
| **lumos_sensor_aid** | **String** |  | [optional] |
| **lumos_sensor_config_build** | **String** |  | [optional] |
| **lumos_sensor_coverage** | **Boolean** |  | [optional] |
| **lumos_sensor_last_seen** | **String** |  | [optional] |
| **snapshot_coverage** | **Boolean** |  | [optional] |
| **snapshot_last_seen** | **String** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::V2AgentCoverage.new(
  iar_coverage: null,
  iar_last_seen: null,
  kac_aid: null,
  kac_config_build: null,
  kac_coverage: null,
  kac_last_seen: null,
  kpa_coverage: null,
  kpa_last_seen: null,
  linux_sensor_aid: null,
  linux_sensor_config_build: null,
  linux_sensor_coverage: null,
  linux_sensor_last_seen: null,
  lumos_sensor_aid: null,
  lumos_sensor_config_build: null,
  lumos_sensor_coverage: null,
  lumos_sensor_last_seen: null,
  snapshot_coverage: null,
  snapshot_last_seen: null
)
```

