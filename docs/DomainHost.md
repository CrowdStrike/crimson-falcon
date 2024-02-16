# Falcon::DomainHost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **admin_available** | **Boolean** |  | [optional] |
| **bandwidth_mbps** | **Float** |  | [optional] |
| **behind_nat** | **Boolean** |  | [optional] |
| **ip** | **String** |  | [optional] |
| **ip_parsed** | **String** |  | [optional] |
| **isp** | **String** |  | [optional] |
| **os_banner** | **String** |  | [optional] |
| **ping_ms** | **Integer** |  | [optional] |
| **processor_banner** | **String** |  | [optional] |
| **ram_gigs** | **Float** |  | [optional] |
| **ssl_available** | **Boolean** |  | [optional] |
| **tld** | **String** |  | [optional] |
| **uptime_hours** | **Integer** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainHost.new(
  admin_available: null,
  bandwidth_mbps: null,
  behind_nat: null,
  ip: null,
  ip_parsed: null,
  isp: null,
  os_banner: null,
  ping_ms: null,
  processor_banner: null,
  ram_gigs: null,
  ssl_available: null,
  tld: null,
  uptime_hours: null
)
```

