# Falcon::ApiHostMigration

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created_time** | **Time** |  |  |
| **events** | [**Array&lt;ApiEvent&gt;**](ApiEvent.md) |  | [optional] |
| **host_migration_id** | **String** |  |  |
| **hostgroups** | **Array&lt;String&gt;** | assigned static hostgroups, may need more details here |  |
| **hostname** | **String** | hostname at the time of migration |  |
| **migration_id** | **String** |  |  |
| **platform** | **String** | platform at the time of migration |  |
| **source_cid** | **String** |  |  |
| **source_device_id** | **String** | device_id in the source cid |  |
| **status** | **String** |  |  |
| **status_details** | **String** |  |  |
| **target_cid** | **String** | not sure if this is necessary since it&#39;s common |  |
| **target_device_id** | **String** | device_id in the target cid. This may change while the migration is incomplete. |  |
| **updated_time** | **Time** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ApiHostMigration.new(
  created_time: null,
  events: null,
  host_migration_id: null,
  hostgroups: null,
  hostname: null,
  migration_id: null,
  platform: null,
  source_cid: null,
  source_device_id: null,
  status: null,
  status_details: null,
  target_cid: null,
  target_device_id: null,
  updated_time: null
)
```

