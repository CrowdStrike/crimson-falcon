# Falcon::K8sregGetAzureTenantInfoResp

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;K8sregAzureTenantInfo&gt;**](K8sregAzureTenantInfo.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::K8sregGetAzureTenantInfoResp.new(
  errors: null,
  meta: null,
  resources: null
)
```

