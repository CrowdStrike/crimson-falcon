# Falcon::PublicGetChangesResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;ChangesChange&gt;**](ChangesChange.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::PublicGetChangesResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```

