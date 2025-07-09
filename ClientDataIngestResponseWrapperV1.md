# Falcon::ClientDataIngestResponseWrapperV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;ClientDataIngestResponseV1&gt;**](ClientDataIngestResponseV1.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ClientDataIngestResponseWrapperV1.new(
  errors: null,
  meta: null,
  resources: null
)
```

