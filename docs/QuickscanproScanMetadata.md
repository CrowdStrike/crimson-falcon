# Falcon::QuickscanproScanMetadata

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created_timestamp** | **Time** |  |  |
| **errors** | [**Array&lt;QuickscanproError&gt;**](QuickscanproError.md) |  | [optional] |
| **sha256** | **String** |  |  |
| **status** | **String** |  |  |
| **updated_timestamp** | **Time** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::QuickscanproScanMetadata.new(
  created_timestamp: null,
  errors: null,
  sha256: null,
  status: null,
  updated_timestamp: null
)
```

