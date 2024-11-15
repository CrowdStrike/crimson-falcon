# Falcon::DomainExternalAssetCertificateEntityIdentifiers

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **common_name** | **String** |  | [optional] |
| **country_name** | **String** |  | [optional] |
| **dn_qualifier** | **String** |  | [optional] |
| **domain_component** | **String** |  | [optional] |
| **email_address** | **String** |  | [optional] |
| **generation_qualifier** | **String** |  | [optional] |
| **given_name** | **String** |  | [optional] |
| **locality_name** | **String** |  | [optional] |
| **organization_name** | **String** |  | [optional] |
| **organizational_unit** | **String** |  | [optional] |
| **pseudonym** | **String** |  | [optional] |
| **serial_number** | **String** |  | [optional] |
| **state_or_province_name** | **String** |  | [optional] |
| **street_address** | **String** |  | [optional] |
| **surname** | **String** |  | [optional] |
| **user_id** | **String** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainExternalAssetCertificateEntityIdentifiers.new(
  common_name: null,
  country_name: null,
  dn_qualifier: null,
  domain_component: null,
  email_address: null,
  generation_qualifier: null,
  given_name: null,
  locality_name: null,
  organization_name: null,
  organizational_unit: null,
  pseudonym: null,
  serial_number: null,
  state_or_province_name: null,
  street_address: null,
  surname: null,
  user_id: null
)
```

