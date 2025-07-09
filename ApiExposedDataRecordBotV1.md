# Falcon::ApiExposedDataRecordBotV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bot_id** | **String** |  | [optional] |
| **domain_detects** | **Array&lt;String&gt;** |  | [optional] |
| **infection_build_id** | **String** |  | [optional] |
| **infection_date** | **Time** |  | [optional] |
| **infection_path** | **String** |  | [optional] |
| **ip** | **String** |  | [optional] |
| **location** | [**ApiExposedDataRecordBotLocationV1**](ApiExposedDataRecordBotLocationV1.md) |  | [optional] |
| **operating_system** | [**ApiExposedDataRecordBotOperatingSystemV1**](ApiExposedDataRecordBotOperatingSystemV1.md) |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ApiExposedDataRecordBotV1.new(
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

