# Falcon::ModelUserInputReadResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) |  | [optional] |
| **meta** | [**MsaspecMetaInfo**](MsaspecMetaInfo.md) |  |  |
| **resources** | [**Array&lt;ModelUserInputViewModel&gt;**](ModelUserInputViewModel.md) | user inputs returned |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ModelUserInputReadResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```

