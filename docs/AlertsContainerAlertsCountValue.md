# Falcon::AlertsContainerAlertsCountValue

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;CommonCountAsResource&gt;**](CommonCountAsResource.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::AlertsContainerAlertsCountValue.new(
  errors: null,
  meta: null,
  resources: null
)
```

