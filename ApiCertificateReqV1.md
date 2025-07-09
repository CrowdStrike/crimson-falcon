# Falcon::ApiCertificateReqV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **issuer** | **String** |  |  |
| **serial** | **String** |  |  |
| **subject** | **String** |  |  |
| **thumbprint** | **String** |  |  |
| **valid_from** | **Time** |  |  |
| **valid_to** | **Time** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ApiCertificateReqV1.new(
  issuer: null,
  serial: null,
  subject: null,
  thumbprint: null,
  valid_from: null,
  valid_to: null
)
```

