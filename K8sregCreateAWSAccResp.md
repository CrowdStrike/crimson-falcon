# Falcon::K8sregCreateAWSAccResp

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;K8sregAWSAccountResp&gt;**](K8sregAWSAccountResp.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::K8sregCreateAWSAccResp.new(
  errors: null,
  meta: null,
  resources: null
)
```

