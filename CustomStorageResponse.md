# Falcon::CustomStorageResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **meta** | [**ApiMetaInfo**](ApiMetaInfo.md) |  |  |
| **resources** | [**Array&lt;ApiObjectMetadata&gt;**](ApiObjectMetadata.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::CustomStorageResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```

