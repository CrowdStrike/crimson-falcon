# Falcon::K8sregGetAWSAccountsResp

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) |  |  |
| **meta** | [**MsaspecMetaInfo**](MsaspecMetaInfo.md) |  |  |
| **resources** | [**Array&lt;K8sregAWSAccountResp&gt;**](K8sregAWSAccountResp.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::K8sregGetAWSAccountsResp.new(
  errors: null,
  meta: null,
  resources: null
)
```

