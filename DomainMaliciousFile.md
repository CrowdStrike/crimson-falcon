# Falcon::DomainMaliciousFile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cid** | **String** |  | [optional] |
| **filename** | **String** |  | [optional] |
| **filepath** | **String** |  | [optional] |
| **hash** | **String** |  | [optional] |
| **host_id** | **String** |  | [optional] |
| **host_scan_id** | **String** |  | [optional] |
| **id** | **String** |  |  |
| **last_updated** | **Time** |  | [optional] |
| **pattern_id** | **Integer** |  | [optional] |
| **quarantined** | **Boolean** |  | [optional] |
| **scan_id** | **String** |  | [optional] |
| **severity** | **Integer** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainMaliciousFile.new(
  cid: null,
  filename: null,
  filepath: null,
  hash: null,
  host_id: null,
  host_scan_id: null,
  id: null,
  last_updated: null,
  pattern_id: null,
  quarantined: null,
  scan_id: null,
  severity: null
)
```

