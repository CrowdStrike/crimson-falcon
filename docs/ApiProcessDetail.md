# Falcon::ApiProcessDetail

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **command_line** | **String** |  |  |
| **device_id** | **String** |  |  |
| **file_name** | **String** |  |  |
| **process_id** | **String** |  |  |
| **process_id_local** | **String** |  |  |
| **start_timestamp** | **String** |  |  |
| **start_timestamp_raw** | **String** |  |  |
| **stop_timestamp** | **String** |  |  |
| **stop_timestamp_raw** | **String** |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::ApiProcessDetail.new(
  command_line: null,
  device_id: null,
  file_name: null,
  process_id: null,
  process_id_local: null,
  start_timestamp: null,
  start_timestamp_raw: null,
  stop_timestamp: null,
  stop_timestamp_raw: null
)
```

