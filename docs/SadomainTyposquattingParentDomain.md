# Falcon::SadomainTyposquattingParentDomain

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the domain |  |
| **punycode_format** | **String** | The Punycode representation of the domain, i.e. starting with &#x60;xn--&#x60; |  |
| **unicode_format** | **String** | The Unicode representation of the domain |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::SadomainTyposquattingParentDomain.new(
  id: null,
  punycode_format: null,
  unicode_format: null
)
```

