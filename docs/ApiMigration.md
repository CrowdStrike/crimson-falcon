# Falcon::ApiMigration

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **canceled_by** | **String** |  | [optional] |
| **completed_time** | **Time** |  | [optional] |
| **created_by** | **String** |  |  |
| **created_time** | **Time** |  |  |
| **migration_id** | **String** |  |  |
| **migration_status** | **String** |  |  |
| **name** | **String** |  |  |
| **started_time** | **Time** |  | [optional] |
| **target_cid** | **String** |  |  |
| **total_hosts** | **Integer** |  |  |
| **updated_by** | **String** |  |  |
| **updated_time** | **Time** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ApiMigration.new(
  canceled_by: null,
  completed_time: null,
  created_by: null,
  created_time: null,
  migration_id: null,
  migration_status: null,
  name: null,
  started_time: null,
  target_cid: null,
  total_hosts: null,
  updated_by: null,
  updated_time: null
)
```

