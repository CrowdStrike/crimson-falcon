# Falcon::ApiGetMigrationDestinationsResponseV1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DestinationsMigrationDestination&gt;**](DestinationsMigrationDestination.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ApiGetMigrationDestinationsResponseV1.new(
  errors: null,
  meta: null,
  resources: null
)
```

