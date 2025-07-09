# Falcon::DetectsapiPostCombinedAlertsV1ResponseSwagger

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **meta** | [**DetectsapiPostCombinedAlertsV1Meta**](DetectsapiPostCombinedAlertsV1Meta.md) |  |  |
| **resources** | [**Array&lt;DetectsExternalAlert&gt;**](DetectsExternalAlert.md) | Resources represent the slice of Alerts that were retrieved |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DetectsapiPostCombinedAlertsV1ResponseSwagger.new(
  errors: null,
  meta: null,
  resources: null
)
```

