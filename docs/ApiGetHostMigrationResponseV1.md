# Falcon::ApiGetHostMigrationResponseV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;ApiHostMigration&gt;**](ApiHostMigration.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ApiGetHostMigrationResponseV1.new(
  errors: null,
  meta: null,
  resources: null
)
```

