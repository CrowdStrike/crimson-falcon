# Falcon::ModelsPodEntityResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) |  | [optional] |
| **meta** | [**MsaspecMetaInfo**](MsaspecMetaInfo.md) |  |  |
| **resources** | [**Array&lt;ModelsPod&gt;**](ModelsPod.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ModelsPodEntityResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```

