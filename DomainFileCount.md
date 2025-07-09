# Falcon::DomainFileCount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **malicious** | **Integer** |  | [optional] |
| **quarantined** | **Integer** |  | [optional] |
| **scanned** | **Integer** |  | [optional] |
| **skipped** | **Integer** |  | [optional] |
| **traversed** | **Integer** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainFileCount.new(
  malicious: null,
  quarantined: null,
  scanned: null,
  skipped: null,
  traversed: null
)
```

