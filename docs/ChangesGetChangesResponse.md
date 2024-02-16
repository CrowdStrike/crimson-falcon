# Falcon::ChangesGetChangesResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) |  | [optional] |
| **meta** | [**MsaspecMetaInfo**](MsaspecMetaInfo.md) |  |  |
| **resources** | [**Array&lt;ChangesChange&gt;**](ChangesChange.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ChangesGetChangesResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```

