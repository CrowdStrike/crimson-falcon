# Falcon::ApiMessageCenterAttachmentUploadResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) |  |  |
| **meta** | [**MsaspecMetaInfo**](MsaspecMetaInfo.md) |  |  |
| **resources** | [**Array&lt;MessagesAttachment&gt;**](MessagesAttachment.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ApiMessageCenterAttachmentUploadResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```

