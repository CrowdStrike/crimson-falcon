# Falcon::K8sregGetAWSAccountsResp

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;K8sregAWSAccountResp&gt;**](K8sregAWSAccountResp.md) |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::K8sregGetAWSAccountsResp.new(
  errors: null,
  meta: null,
  resources: null
)
```

