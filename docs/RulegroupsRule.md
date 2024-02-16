# Falcon::RulegroupsRule

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **content_files** | **Array&lt;String&gt;** |  | [optional] |
| **content_registry_values** | **Array&lt;String&gt;** |  | [optional] |
| **created_timestamp** | **String** |  | [optional] |
| **depth** | **String** |  |  |
| **description** | **String** |  | [optional] |
| **enable_content_capture** | **Boolean** |  | [optional] |
| **exclude** | **String** |  | [optional] |
| **exclude_processes** | **String** |  | [optional] |
| **exclude_users** | **String** |  | [optional] |
| **id** | **String** |  |  |
| **include** | **String** |  |  |
| **include_processes** | **String** |  | [optional] |
| **include_users** | **String** |  | [optional] |
| **modified_timestamp** | **String** |  | [optional] |
| **path** | **String** |  |  |
| **precedence** | **Integer** |  | [optional] |
| **rule_group_id** | **String** |  |  |
| **severity** | **String** |  |  |
| **type** | **String** |  |  |
| **watch_attributes_directory_changes** | **Boolean** |  | [optional] |
| **watch_attributes_file_changes** | **Boolean** |  | [optional] |
| **watch_create_directory_changes** | **Boolean** |  | [optional] |
| **watch_create_file_changes** | **Boolean** |  | [optional] |
| **watch_create_key_changes** | **Boolean** |  | [optional] |
| **watch_delete_directory_changes** | **Boolean** |  | [optional] |
| **watch_delete_file_changes** | **Boolean** |  | [optional] |
| **watch_delete_key_changes** | **Boolean** |  | [optional] |
| **watch_delete_value_changes** | **Boolean** |  | [optional] |
| **watch_permissions_directory_changes** | **Boolean** |  | [optional] |
| **watch_permissions_file_changes** | **Boolean** |  | [optional] |
| **watch_rename_directory_changes** | **Boolean** |  | [optional] |
| **watch_rename_file_changes** | **Boolean** |  | [optional] |
| **watch_rename_key_changes** | **Boolean** |  | [optional] |
| **watch_set_value_changes** | **Boolean** |  | [optional] |
| **watch_write_file_changes** | **Boolean** |  | [optional] |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::RulegroupsRule.new(
  content_files: null,
  content_registry_values: null,
  created_timestamp: null,
  depth: null,
  description: null,
  enable_content_capture: null,
  exclude: null,
  exclude_processes: null,
  exclude_users: null,
  id: null,
  include: null,
  include_processes: null,
  include_users: null,
  modified_timestamp: null,
  path: null,
  precedence: null,
  rule_group_id: null,
  severity: null,
  type: null,
  watch_attributes_directory_changes: null,
  watch_attributes_file_changes: null,
  watch_create_directory_changes: null,
  watch_create_file_changes: null,
  watch_create_key_changes: null,
  watch_delete_directory_changes: null,
  watch_delete_file_changes: null,
  watch_delete_key_changes: null,
  watch_delete_value_changes: null,
  watch_permissions_directory_changes: null,
  watch_permissions_file_changes: null,
  watch_rename_directory_changes: null,
  watch_rename_file_changes: null,
  watch_rename_key_changes: null,
  watch_set_value_changes: null,
  watch_write_file_changes: null
)
```

