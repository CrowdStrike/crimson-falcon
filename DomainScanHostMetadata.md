# Falcon::DomainScanHostMetadata

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cid** | **String** |  | [optional] |
| **completed_on** | **Time** |  | [optional] |
| **filecount** | [**DomainFileCount**](DomainFileCount.md) |  | [optional] |
| **host_id** | **String** |  | [optional] |
| **host_scan_id** | **String** |  | [optional] |
| **id** | **String** |  |  |
| **last_updated** | **Time** |  | [optional] |
| **profile_id** | **String** |  | [optional] |
| **scan_control_reason** | **String** |  | [optional] |
| **scan_id** | **String** |  | [optional] |
| **severity** | **Integer** |  | [optional] |
| **started_on** | **Time** |  | [optional] |
| **status** | **String** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainScanHostMetadata.new(
  cid: null,
  completed_on: null,
  filecount: null,
  host_id: null,
  host_scan_id: null,
  id: null,
  last_updated: null,
  profile_id: null,
  scan_control_reason: null,
  scan_id: null,
  severity: null,
  started_on: null,
  status: null
)
```

