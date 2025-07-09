# Falcon::ModelsContainerCoverageResponseEntity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;ModelsContainerCoverage&gt;**](ModelsContainerCoverage.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ModelsContainerCoverageResponseEntity.new(
  errors: null,
  meta: null,
  resources: null
)
```

