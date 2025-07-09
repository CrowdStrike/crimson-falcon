# Falcon::ApiGetMigrationsResponseV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;ApiMigration&gt;**](ApiMigration.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ApiGetMigrationsResponseV1.new(
  errors: null,
  meta: null,
  resources: null
)
```

