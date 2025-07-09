# Falcon::FigapiNameServer

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **domain** | **String** |  | [optional] |
| **hostname** | **String** |  | [optional] |
| **ip_addresses** | [**Array&lt;FigapiIPv4&gt;**](FigapiIPv4.md) |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::FigapiNameServer.new(
  domain: null,
  hostname: null,
  ip_addresses: null
)
```

