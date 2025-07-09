# Falcon::DomainFemDNSDomain

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fqdn** | **String** | The FQDN |  |
| **isps** | **Array&lt;String&gt;** | The ISPs hosting this domain | [optional] |
| **parent_domain** | **String** | The ID of the parent domain (only populated if domain type is subdomain) | [optional] |
| **resolved_ips** | **Array&lt;String&gt;** | IPs the domain resolved to | [optional] |
| **services** | [**Array&lt;DomainExternalAssetService&gt;**](DomainExternalAssetService.md) | A list of exposed services on the domain | [optional] |
| **type** | **String** | The type of domain (root, subdomain) |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainFemDNSDomain.new(
  fqdn: null,
  isps: null,
  parent_domain: null,
  resolved_ips: null,
  services: null,
  type: null
)
```

