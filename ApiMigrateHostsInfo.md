# Falcon::ApiMigrateHostsInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **hosts_errored** | **Integer** |  |  |
| **hosts_queued** | **Integer** |  |  |
| **migration_id** | **String** |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ApiMigrateHostsInfo.new(
  hosts_errored: null,
  hosts_queued: null,
  migration_id: null
)
```

