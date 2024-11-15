# Falcon::ModelsContainerEntityResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;ModelsContainer&gt;**](ModelsContainer.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ModelsContainerEntityResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```

