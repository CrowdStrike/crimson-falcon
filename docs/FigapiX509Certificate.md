# Falcon::FigapiX509Certificate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **certificate_hash** | **String** |  | [optional] |
| **common_name** | **String** |  | [optional] |
| **email_address** | **String** |  | [optional] |
| **issuer_common_name** | **String** |  | [optional] |
| **organization** | **String** |  | [optional] |
| **public_key_type** | **String** |  | [optional] |
| **signature_algorithm** | **String** |  | [optional] |
| **subject** | **String** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::FigapiX509Certificate.new(
  certificate_hash: null,
  common_name: null,
  email_address: null,
  issuer_common_name: null,
  organization: null,
  public_key_type: null,
  signature_algorithm: null,
  subject: null
)
```

