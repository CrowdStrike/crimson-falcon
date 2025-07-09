# Falcon::ClientExtractionWithFilesV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **error** | **String** |  | [optional] |
| **extract_timestamp** | **String** |  |  |
| **files** | [**Array&lt;ClientExtractionFileResultV1&gt;**](ClientExtractionFileResultV1.md) |  | [optional] |
| **id** | **String** |  | [optional] |
| **status** | **String** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ClientExtractionWithFilesV1.new(
  error: null,
  extract_timestamp: null,
  files: null,
  id: null,
  status: null
)
```

