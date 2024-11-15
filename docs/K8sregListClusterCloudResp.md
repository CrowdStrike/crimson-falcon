# Falcon::K8sregListClusterCloudResp

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;K8sregListClusterCloudItemResp&gt;**](K8sregListClusterCloudItemResp.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::K8sregListClusterCloudResp.new(
  errors: null,
  meta: null,
  resources: null
)
```

