# Falcon::CommonCountResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **resources** | [**Array&lt;CommonCountAsResource&gt;**](CommonCountAsResource.md) |  |  |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) |  | [optional] |
| **meta** | [**MsaspecMetaInfo**](MsaspecMetaInfo.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::CommonCountResponse.new(
  resources: null,
  errors: null,
  meta: null
)
```

