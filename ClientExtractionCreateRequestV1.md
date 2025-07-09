# Falcon::ClientExtractionCreateRequestV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **extract_all** | **Boolean** |  | [optional] |
| **files** | [**Array&lt;ClientExtractionFileParametersV1&gt;**](ClientExtractionFileParametersV1.md) |  | [optional] |
| **sha256** | **String** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ClientExtractionCreateRequestV1.new(
  extract_all: null,
  files: null,
  sha256: null
)
```

