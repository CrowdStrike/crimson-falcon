# Falcon::QuarantineQuarantinedFile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **aid** | **String** |  | [optional] |
| **cid** | **String** |  | [optional] |
| **date_created** | **String** |  | [optional] |
| **date_updated** | **String** |  | [optional] |
| **detect_ids** | **Array&lt;String&gt;** |  | [optional] |
| **extracted** | **Boolean** |  | [optional] |
| **hostname** | **String** |  | [optional] |
| **id** | **String** |  | [optional] |
| **is_on_removable_disk** | **Boolean** |  | [optional] |
| **paths** | [**Array&lt;QuarantineQuarantinedFilePath&gt;**](QuarantineQuarantinedFilePath.md) |  | [optional] |
| **primary_module** | **Boolean** |  | [optional] |
| **release_path_for_removable_media** | **String** |  | [optional] |
| **sandbox_report_id** | **String** |  | [optional] |
| **sandbox_report_state** | **String** |  | [optional] |
| **sha256** | **String** |  | [optional] |
| **state** | **String** |  | [optional] |
| **username** | **String** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::QuarantineQuarantinedFile.new(
  aid: null,
  cid: null,
  date_created: null,
  date_updated: null,
  detect_ids: null,
  extracted: null,
  hostname: null,
  id: null,
  is_on_removable_disk: null,
  paths: null,
  primary_module: null,
  release_path_for_removable_media: null,
  sandbox_report_id: null,
  sandbox_report_state: null,
  sha256: null,
  state: null,
  username: null
)
```

