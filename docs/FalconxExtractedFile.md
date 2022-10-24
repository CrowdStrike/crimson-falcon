# Falcon::FalconxExtractedFile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** |  | [optional] |
| **file_available_to_download** | **Boolean** |  | [optional] |
| **file_path** | **String** |  | [optional] |
| **file_size** | **Integer** |  | [optional] |
| **md5** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **runtime_process** | **String** |  | [optional] |
| **sha1** | **String** |  | [optional] |
| **sha256** | **String** |  | [optional] |
| **threat_level** | **Integer** |  | [optional] |
| **threat_level_readable** | **String** |  | [optional] |
| **type_tags** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::FalconxExtractedFile.new(
  description: null,
  file_available_to_download: null,
  file_path: null,
  file_size: null,
  md5: null,
  name: null,
  runtime_process: null,
  sha1: null,
  sha256: null,
  threat_level: null,
  threat_level_readable: null,
  type_tags: null
)
```

