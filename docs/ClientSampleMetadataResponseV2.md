# Falcon::ClientSampleMetadataResponseV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;ClientSampleMetadataV2&gt;**](ClientSampleMetadataV2.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ClientSampleMetadataResponseV2.new(
  errors: null,
  meta: null,
  resources: null
)
```

