# Falcon::DetectsapiPostEntitiesAlertsV1Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) |  | [optional] |
| **meta** | [**MsaspecMetaInfo**](MsaspecMetaInfo.md) |  |  |
| **resources** | [**Array&lt;DetectsAlert&gt;**](DetectsAlert.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DetectsapiPostEntitiesAlertsV1Response.new(
  errors: null,
  meta: null,
  resources: null
)
```

