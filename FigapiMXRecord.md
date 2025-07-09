# Falcon::FigapiMXRecord

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **domain** | **String** |  |  |
| **hostname** | **String** |  | [optional] |
| **ipv4_addresses** | [**Array&lt;FigapiIPv4&gt;**](FigapiIPv4.md) |  | [optional] |
| **ipv6_addresses** | [**Array&lt;FigapiIPv6&gt;**](FigapiIPv6.md) |  | [optional] |
| **priority** | **Integer** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::FigapiMXRecord.new(
  domain: null,
  hostname: null,
  ipv4_addresses: null,
  ipv6_addresses: null,
  priority: null
)
```

