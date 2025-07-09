# Falcon::K8sregGetAzureSubscriptionsResp

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
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

