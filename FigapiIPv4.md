# Falcon::FigapiIPv4

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **asn** | **Array&lt;Integer&gt;** | Autonomous System Number | [optional] |
| **ip_properties** | **Array&lt;String&gt;** | This can be one of: &#x60;AdversaryControlled&#x60;, &#x60;CDN&#x60;, &#x60;PublicDNSResolver&#x60;, &#x60;CaptivePortal&#x60;, &#x60;DNSSinkhole&#x60;, &#x60;DNSRootServer&#x60;, &#x60;HoneypotHoneypot&#x60;, etc. | [optional] |
| **ipv4** | **String** | The IPv4 address as a string | [optional] |
| **isp** | **String** | Internet service provider | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::FigapiIPv4.new(
  asn: null,
  ip_properties: null,
  ipv4: null,
  isp: null
)
```

