# Falcon::ModelsClusterEntityResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
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

