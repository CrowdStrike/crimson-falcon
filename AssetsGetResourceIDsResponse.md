# Falcon::AssetsGetResourceIDsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**RestCursorAndLimitMetaInfo**](RestCursorAndLimitMetaInfo.md) |  | [optional] |
| **resources** | **Array&lt;String&gt;** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::AssetsGetResourceIDsResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```

