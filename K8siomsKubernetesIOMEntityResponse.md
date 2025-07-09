# Falcon::K8siomsKubernetesIOMEntityResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
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

