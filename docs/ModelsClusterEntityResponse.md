# Falcon::ModelsClusterEntityResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) |  | [optional] |
| **meta** | [**MsaspecMetaInfo**](MsaspecMetaInfo.md) |  |  |
| **resources** | [**Array&lt;ModelsCluster&gt;**](ModelsCluster.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ModelsClusterEntityResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```

