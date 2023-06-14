# Falcon::SadomainTyposquattingBaseDomain

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created_date** | **Time** | The date when the domain was registered | [optional] |
| **id** | **String** | The ID of the domain |  |
| **is_registered** | **Boolean** | Whether the domain has a valid Whois record |  |
| **punycode_format** | **String** | The Punycode representation of the domain, i.e. starting with &#x60;xn--&#x60; |  |
| **unicode_format** | **String** | The Unicode representation of the domain |  |
| **whois** | [**SadomainWhoisRecord**](SadomainWhoisRecord.md) |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::SadomainTyposquattingBaseDomain.new(
  created_date: null,
  id: null,
  is_registered: null,
  punycode_format: null,
  unicode_format: null,
  whois: null
)
```

