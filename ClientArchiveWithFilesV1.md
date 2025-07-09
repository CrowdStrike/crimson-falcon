# Falcon::ClientArchiveWithFilesV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **error** | **String** |  | [optional] |
| **files** | **Array&lt;String&gt;** |  | [optional] |
| **mime_type** | **String** |  |  |
| **name** | **String** |  |  |
| **sha256** | **String** |  | [optional] |
| **size** | **Integer** |  |  |
| **status** | **String** |  |  |
| **upload_timestamp** | **String** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ClientArchiveWithFilesV1.new(
  error: null,
  files: null,
  mime_type: null,
  name: null,
  sha256: null,
  size: null,
  status: null,
  upload_timestamp: null
)
```

