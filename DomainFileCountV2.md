# Falcon::DomainFileCountV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **malicious** | **Integer** |  |  |
| **quarantined** | **Integer** |  |  |
| **scanned** | **Integer** |  |  |
| **skipped** | **Integer** |  |  |
| **traversed** | **Integer** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainFileCountV2.new(
  malicious: null,
  quarantined: null,
  scanned: null,
  skipped: null,
  traversed: null
)
```

