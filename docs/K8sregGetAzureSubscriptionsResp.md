# Falcon::K8sregGetAzureSubscriptionsResp

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) |  |  |
| **meta** | [**MsaspecMetaInfo**](MsaspecMetaInfo.md) |  |  |
| **resources** | [**Array&lt;K8sregAzureSubscriptionResp&gt;**](K8sregAzureSubscriptionResp.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::K8sregGetAzureSubscriptionsResp.new(
  errors: null,
  meta: null,
  resources: null
)
```

