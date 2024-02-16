# Falcon::ModelsContainerRuntimePivotResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) |  | [optional] |
| **meta** | [**MsaspecMetaInfo**](MsaspecMetaInfo.md) |  |  |
| **resources** | [**Array&lt;ModelsContainerRuntimePivot&gt;**](ModelsContainerRuntimePivot.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ModelsContainerRuntimePivotResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```

