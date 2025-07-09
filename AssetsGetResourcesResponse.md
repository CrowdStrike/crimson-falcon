# Falcon::AssetsGetResourcesResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**RestCursorMetaInfo**](RestCursorMetaInfo.md) |  |  |
| **resources** | [**Array&lt;ResourcesCloudResource&gt;**](ResourcesCloudResource.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::AssetsGetResourcesResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```

