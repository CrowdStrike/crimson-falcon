# Falcon::DomainExposedDataRecordBotV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bot_id** | **String** |  |  |
| **domain_detects** | **Array&lt;String&gt;** |  |  |
| **infection_build_id** | **String** |  |  |
| **infection_date** | **Time** |  |  |
| **infection_path** | **String** |  |  |
| **ip** | **String** |  | [optional] |
| **location** | [**DomainExposedDataRecordBotLocationV1**](DomainExposedDataRecordBotLocationV1.md) |  |  |
| **operating_system** | [**DomainExposedDataRecordBotOperatingSystemV1**](DomainExposedDataRecordBotOperatingSystemV1.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainExposedDataRecordBotV1.new(
  bot_id: null,
  domain_detects: null,
  infection_build_id: null,
  infection_date: null,
  infection_path: null,
  ip: null,
  location: null,
  operating_system: null
)
```

