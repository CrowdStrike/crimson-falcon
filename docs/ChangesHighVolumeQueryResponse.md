# Falcon::ChangesHighVolumeQueryResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**ChangesHighVolumeQueryMeta**](ChangesHighVolumeQueryMeta.md) |  |  |
| **resources** | **Array&lt;String&gt;** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ChangesHighVolumeQueryResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```

