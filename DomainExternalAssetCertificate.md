# Falcon::DomainExternalAssetCertificate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ciphers** | **Array&lt;Object&gt;** |  | [optional] |
| **fingerprint_sha256** | **String** |  | [optional] |
| **issuer** | [**DomainExternalAssetCertificateEntityIdentifiers**](DomainExternalAssetCertificateEntityIdentifiers.md) |  | [optional] |
| **pubkey_bits** | **Integer** |  | [optional] |
| **pubkey_type** | **String** |  | [optional] |
| **serial** | **String** |  | [optional] |
| **signature_algorithm** | **String** |  | [optional] |
| **subject** | [**DomainExternalAssetCertificateEntityIdentifiers**](DomainExternalAssetCertificateEntityIdentifiers.md) |  | [optional] |
| **valid_from** | **Time** |  | [optional] |
| **valid_to** | **Time** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainExternalAssetCertificate.new(
  ciphers: null,
  fingerprint_sha256: null,
  issuer: null,
  pubkey_bits: null,
  pubkey_type: null,
  serial: null,
  signature_algorithm: null,
  subject: null,
  valid_from: null,
  valid_to: null
)
```

