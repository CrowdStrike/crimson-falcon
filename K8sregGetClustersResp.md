# Falcon::K8sregGetClustersResp

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;K8sregClusterResp&gt;**](K8sregClusterResp.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::K8sregGetClustersResp.new(
  errors: null,
  meta: null,
  resources: null
)
```

