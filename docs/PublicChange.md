# Falcon::PublicChange

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action_timestamp** | **String** |  |  |
| **action_type** | **String** | Possible values: UNKNOWN, CREATE, WRITE, DELETE, SET, RENAME. |  |
| **aid** | **String** |  |  |
| **attributes** | [**Array&lt;PublicAttribute&gt;**](PublicAttribute.md) |  | [optional] |
| **cid** | **String** |  |  |
| **command_line** | **String** |  |  |
| **diff** | [**PublicDiff**](PublicDiff.md) |  | [optional] |
| **entity_path** | **String** |  |  |
| **entity_path_new** | **String** |  | [optional] |
| **entity_type** | **String** | Possible values: UNKNOWN, FILE, DIR, REGKEY,  REGVAL. |  |
| **grandparent_process_image_file_name** | **String** |  | [optional] |
| **host** | [**PublicHost**](PublicHost.md) |  | [optional] |
| **id** | **String** |  |  |
| **ingestion_timestamp** | **String** |  |  |
| **is_from_different_mount_namespace** | **Boolean** |  | [optional] |
| **is_suppressed** | **Boolean** |  |  |
| **oci_container_id** | **String** |  | [optional] |
| **parent_process_image_file_name** | **String** |  | [optional] |
| **permissions** | [**PublicPermissions**](PublicPermissions.md) |  | [optional] |
| **permissions_lin** | [**PublicPermissionsLin**](PublicPermissionsLin.md) |  | [optional] |
| **platform_name** | **String** |  |  |
| **policy** | [**PublicPolicy**](PublicPolicy.md) |  | [optional] |
| **prevalence** | [**PublicPrevalence**](PublicPrevalence.md) |  | [optional] |
| **process_id** | **String** |  |  |
| **process_image_file_name** | **String** |  |  |
| **real_user_id** | **String** |  | [optional] |
| **severity** | **String** | Possible values: UNKNOWN, LOW, MEDIUM, HIGH, CRITICAL |  |
| **tags** | [**Array&lt;PublicTag&gt;**](PublicTag.md) |  | [optional] |
| **user_id** | **String** |  |  |
| **user_name** | **String** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::PublicChange.new(
  action_timestamp: null,
  action_type: null,
  aid: null,
  attributes: null,
  cid: null,
  command_line: null,
  diff: null,
  entity_path: null,
  entity_path_new: null,
  entity_type: null,
  grandparent_process_image_file_name: null,
  host: null,
  id: null,
  ingestion_timestamp: null,
  is_from_different_mount_namespace: null,
  is_suppressed: null,
  oci_container_id: null,
  parent_process_image_file_name: null,
  permissions: null,
  permissions_lin: null,
  platform_name: null,
  policy: null,
  prevalence: null,
  process_id: null,
  process_image_file_name: null,
  real_user_id: null,
  severity: null,
  tags: null,
  user_id: null,
  user_name: null
)
```

