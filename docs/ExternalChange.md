# Falcon::ExternalChange

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action_timestamp** | **String** |  |  |
| **action_type** | **String** | Possible values: UNKNOWN, CREATE, WRITE, DELETE, SET, RENAME. |  |
| **aid** | **String** |  |  |
| **cid** | **String** |  |  |
| **command_line** | **String** |  |  |
| **diff** | [**ExternalDiff**](ExternalDiff.md) |  | [optional] |
| **entity_path** | **String** |  |  |
| **entity_path_new** | **String** |  | [optional] |
| **entity_type** | **String** | Possible values: UNKNOWN, FILE, DIR, REGKEY,  REGVAL. |  |
| **host** | [**ExternalHost**](ExternalHost.md) |  | [optional] |
| **id** | **String** |  |  |
| **ingestion_timestamp** | **String** |  |  |
| **is_suppressed** | **Boolean** |  |  |
| **platform_name** | **String** |  |  |
| **policy** | [**ExternalPolicy**](ExternalPolicy.md) |  | [optional] |
| **process_id** | **String** |  |  |
| **process_image_file_name** | **String** |  |  |
| **severity** | **String** | Possible values: UNKNOWN, LOW, MEDIUM, HIGH, CRITICAL |  |
| **user_id** | **String** |  |  |
| **user_name** | **String** |  |  |

## Example

```ruby
require 'crowdstrike-falcon'

instance = Falcon::ExternalChange.new(
  action_timestamp: null,
  action_type: null,
  aid: null,
  cid: null,
  command_line: null,
  diff: null,
  entity_path: null,
  entity_path_new: null,
  entity_type: null,
  host: null,
  id: null,
  ingestion_timestamp: null,
  is_suppressed: null,
  platform_name: null,
  policy: null,
  process_id: null,
  process_image_file_name: null,
  severity: null,
  user_id: null,
  user_name: null
)
```

