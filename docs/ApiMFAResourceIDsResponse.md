# Falcon::ApiMFAResourceIDsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **_next** | **Object** |  | [optional] |
| **resources** | **Array&lt;String&gt;** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ApiMFAResourceIDsResponse.new(
  errors: null,
  meta: null,
  _next: null,
  resources: null
)
```

