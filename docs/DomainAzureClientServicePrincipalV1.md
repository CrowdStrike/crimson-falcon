# Falcon::DomainAzureClientServicePrincipalV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cid** | **String** |  |  |
| **client_id** | **String** |  | [optional] |
| **encrypted_private_key** | **String** |  | [optional] |
| **public_certificate** | **String** |  | [optional] |
| **tenant_id** | **String** |  |  |
| **x5t** | **String** |  | [optional] |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::DomainAzureClientServicePrincipalV1.new(
  cid: null,
  client_id: null,
  encrypted_private_key: null,
  public_certificate: null,
  tenant_id: null,
  x5t: null
)
```

