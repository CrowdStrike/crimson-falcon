# Falcon::DetectsapiPostEntitiesAlertsV2ResponseSwagger

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DetectsExternalAlert&gt;**](DetectsExternalAlert.md) | Resources represent the slice of Alerts that were retrieved for the given Alert IDs |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DetectsapiPostEntitiesAlertsV2ResponseSwagger.new(
  errors: null,
  meta: null,
  resources: null
)
```

