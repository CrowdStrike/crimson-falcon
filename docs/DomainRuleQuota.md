# Falcon::DomainRuleQuota

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active** | **Integer** | Number of active rules |  |
| **pending** | **Integer** | Number of pending rules |  |
| **total** | **Integer** | Monitoring rules limit |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainRuleQuota.new(
  active: null,
  pending: null,
  total: null
)
```

