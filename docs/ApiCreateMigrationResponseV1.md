# Falcon::ApiCreateMigrationResponseV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;ApiMigrateHostsInfo&gt;**](ApiMigrateHostsInfo.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ApiCreateMigrationResponseV1.new(
  errors: null,
  meta: null,
  resources: null
)
```

