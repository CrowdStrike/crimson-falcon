# Falcon::DomainExternalAssetSSLRecord

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **alpn** | **String** |  | [optional] |
| **alternative_name** | **String** |  | [optional] |
| **certificate** | [**DomainExternalAssetCertificate**](DomainExternalAssetCertificate.md) |  | [optional] |
| **cipher_suites** | [**Array&lt;DomainCipher&gt;**](DomainCipher.md) |  | [optional] |
| **ja3s** | **String** |  | [optional] |
| **jarm** | **String** |  | [optional] |
| **supported_versions** | **Array&lt;String&gt;** |  | [optional] |
| **version** | **String** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DomainExternalAssetSSLRecord.new(
  alpn: null,
  alternative_name: null,
  certificate: null,
  cipher_suites: null,
  ja3s: null,
  jarm: null,
  supported_versions: null,
  version: null
)
```

