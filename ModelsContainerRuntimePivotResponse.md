# Falcon::ModelsContainerRuntimePivotResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
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

