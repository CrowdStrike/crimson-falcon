# Falcon::SadomainTyposquattingComponent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **base_domain** | [**SadomainTyposquattingBaseDomain**](SadomainTyposquattingBaseDomain.md) |  |  |
| **id** | **String** | The ID of the infrastructure component |  |
| **parent_domain** | [**SadomainTyposquattingParentDomain**](SadomainTyposquattingParentDomain.md) |  |  |
| **punycode_format** | **String** | The Punycode representation of the infrastructure component, i.e. starting with &#x60;xn--&#x60; |  |
| **submit_for_blocking_info** | [**SadomainSubmitForBlockingInfo**](SadomainSubmitForBlockingInfo.md) |  | [optional] |
| **unicode_format** | **String** | The Unicode representation of the infrastructure component |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::SadomainTyposquattingComponent.new(
  base_domain: null,
  id: null,
  parent_domain: null,
  punycode_format: null,
  submit_for_blocking_info: null,
  unicode_format: null
)
```

