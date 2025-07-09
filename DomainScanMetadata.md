# Falcon::DomainScanMetadata

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **completed_on** | **Time** |  | [optional] |
| **filecount** | [**DomainFileCount**](DomainFileCount.md) |  | [optional] |
| **host_id** | **String** |  |  |
| **host_name** | **String** |  | [optional] |
| **host_scan_id** | **String** |  | [optional] |
| **last_updated** | **Time** |  | [optional] |
| **scan_control_reason** | **String** |  | [optional] |
| **scan_host_metadata_id** | **String** |  | [optional] |
| **severity** | **Integer** |  | [optional] |
| **started_on** | **Time** |  | [optional] |
| **status** | **String** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainScanMetadata.new(
  completed_on: null,
  filecount: null,
  host_id: null,
  host_name: null,
  host_scan_id: null,
  last_updated: null,
  scan_control_reason: null,
  scan_host_metadata_id: null,
  severity: null,
  started_on: null,
  status: null
)
```

