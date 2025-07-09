# Falcon::AlertsContainerAlertsEntityResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
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

