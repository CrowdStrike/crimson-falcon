# Falcon::EmpowerapiRemoteCommandPutFileV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **comments_for_audit_log** | **String** |  | [optional] |
| **content** | **String** |  | [optional] |
| **created_by** | **String** |  | [optional] |
| **created_by_uuid** | **String** |  | [optional] |
| **created_timestamp** | **Time** |  | [optional] |
| **description** | **String** |  | [optional] |
| **file_type** | **String** |  | [optional] |
| **id** | **String** |  | [optional] |
| **modified_by** | **String** |  | [optional] |
| **modified_by_uuid** | **String** |  | [optional] |
| **modified_timestamp** | **Time** |  | [optional] |
| **name** | **String** |  | [optional] |
| **permission_type** | **String** |  | [optional] |
| **platform** | **Array&lt;String&gt;** |  | [optional] |
| **run_attempt_count** | **Integer** |  |  |
| **run_success_count** | **Integer** |  |  |
| **sha256** | **String** |  | [optional] |
| **size** | **Integer** |  | [optional] |
| **write_access** | **Boolean** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::EmpowerapiRemoteCommandPutFileV1.new(
  comments_for_audit_log: null,
  content: null,
  created_by: null,
  created_by_uuid: null,
  created_timestamp: null,
  description: null,
  file_type: null,
  id: null,
  modified_by: null,
  modified_by_uuid: null,
  modified_timestamp: null,
  name: null,
  permission_type: null,
  platform: null,
  run_attempt_count: null,
  run_success_count: null,
  sha256: null,
  size: null,
  write_access: null
)
```

