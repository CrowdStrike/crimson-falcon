# Falcon::ModelsDeploymentEntityResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) |  | [optional] |
| **meta** | [**MsaspecMetaInfo**](MsaspecMetaInfo.md) |  |  |
| **resources** | [**Array&lt;ModelsDeployment&gt;**](ModelsDeployment.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ModelsDeploymentEntityResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```

