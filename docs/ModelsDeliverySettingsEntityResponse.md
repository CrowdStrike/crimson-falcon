# Falcon::ModelsDeliverySettingsEntityResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;ModelsDeliverySettings&gt;**](ModelsDeliverySettings.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ModelsDeliverySettingsEntityResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```

