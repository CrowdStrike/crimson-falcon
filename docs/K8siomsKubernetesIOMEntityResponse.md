# Falcon::K8siomsKubernetesIOMEntityResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) |  | [optional] |
| **meta** | [**MsaspecMetaInfo**](MsaspecMetaInfo.md) |  |  |
| **resources** | [**Array&lt;ModelsAPIKubernetesIOM&gt;**](ModelsAPIKubernetesIOM.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::K8siomsKubernetesIOMEntityResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```

