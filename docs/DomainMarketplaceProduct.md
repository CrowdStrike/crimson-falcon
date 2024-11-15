# Falcon::DomainMarketplaceProduct

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **card** | [**DomainCard**](DomainCard.md) |  | [optional] |
| **country_code** | **String** |  | [optional] |
| **credentials** | [**DomainMarketplaceCredentials**](DomainMarketplaceCredentials.md) |  | [optional] |
| **host** | [**DomainHost**](DomainHost.md) |  | [optional] |
| **location** | **String** |  | [optional] |
| **price** | **String** |  | [optional] |
| **type** | **String** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainMarketplaceProduct.new(
  card: null,
  country_code: null,
  credentials: null,
  host: null,
  location: null,
  price: null,
  type: null
)
```

