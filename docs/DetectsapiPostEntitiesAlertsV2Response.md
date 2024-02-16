# Falcon::DetectsapiPostEntitiesAlertsV2Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) |  | [optional] |
| **meta** | [**MsaspecMetaInfo**](MsaspecMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DetectsAlert&gt;**](DetectsAlert.md) | Resources represent the slice of Alerts that were retrieved for the given Alert IDs |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DetectsapiPostEntitiesAlertsV2Response.new(
  errors: null,
  meta: null,
  resources: null
)
```

