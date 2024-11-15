# Falcon::ApiRespCertificatesV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;ApiCertificatesResponseV1&gt;**](ApiCertificatesResponseV1.md) |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ApiRespCertificatesV1.new(
  errors: null,
  meta: null,
  resources: null
)
```

