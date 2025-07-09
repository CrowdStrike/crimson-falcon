# Falcon::FalconxMemoryDumpData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** |  | [optional] |
| **binary_content_id** | **String** |  | [optional] |
| **extracted_strings_id** | **String** |  | [optional] |
| **file_process** | **String** |  | [optional] |
| **file_process_disc_pathway** | **String** |  | [optional] |
| **file_process_pid** | **Integer** |  | [optional] |
| **file_process_sha256** | **String** |  | [optional] |
| **filename** | **String** |  | [optional] |
| **flags** | **String** |  | [optional] |
| **hex_dump_id** | **String** |  | [optional] |
| **verdict** | **String** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::FalconxMemoryDumpData.new(
  address: null,
  binary_content_id: null,
  extracted_strings_id: null,
  file_process: null,
  file_process_disc_pathway: null,
  file_process_pid: null,
  file_process_sha256: null,
  filename: null,
  flags: null,
  hex_dump_id: null,
  verdict: null
)
```

