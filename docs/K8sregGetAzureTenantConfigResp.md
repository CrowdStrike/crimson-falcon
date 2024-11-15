# Falcon::K8sregGetAzureTenantConfigResp

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;K8sregAzureTenantConfig&gt;**](K8sregAzureTenantConfig.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::K8sregGetAzureTenantConfigResp.new(
  errors: null,
  meta: null,
  resources: null
)
```

