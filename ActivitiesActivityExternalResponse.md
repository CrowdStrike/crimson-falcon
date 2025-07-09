# Falcon::ActivitiesActivityExternalResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  |  |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
| **resources** | [**Array&lt;ActivitiesActivity&gt;**](ActivitiesActivity.md) |  |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::ActivitiesActivityExternalResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```

