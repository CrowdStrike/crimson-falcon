# Falcon::AlertsContainerAlertsEntityResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) |  | [optional] |
| **meta** | [**MsaspecMetaInfo**](MsaspecMetaInfo.md) |  |  |
| **resources** | [**Array&lt;ModelsAPIContainerAlert&gt;**](ModelsAPIContainerAlert.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::AlertsContainerAlertsEntityResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```

