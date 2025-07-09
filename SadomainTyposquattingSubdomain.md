# Falcon::SadomainTyposquattingSubdomain

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **first_seen** | **Time** | First time the subdomain was observed | [optional] |
| **has_noisy_domain_prefix** | **Boolean** | Subdomain&#39;s leftmost domain label is one of www, mail, ns1, ns2 |  |
| **id** | **String** | The ID of the subdomain |  |
| **last_seen** | **Time** | Last time the subdomain was observed | [optional] |
| **punycode_domain_prefix** | **String** | Subdomain&#39;s leftmost domain label, in punycode format |  |
| **punycode_format** | **String** | The Punycode representation of the subdomain, i.e. starting with &#x60;xn--&#x60; |  |
| **unicode_domain_prefix** | **String** | Subdomain&#39;s leftmost domain label, in Unicode format |  |
| **unicode_format** | **String** | The Unicode representation of the subdomain |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::SadomainTyposquattingSubdomain.new(
  first_seen: null,
  has_noisy_domain_prefix: null,
  id: null,
  last_seen: null,
  punycode_domain_prefix: null,
  punycode_format: null,
  unicode_domain_prefix: null,
  unicode_format: null
)
```

