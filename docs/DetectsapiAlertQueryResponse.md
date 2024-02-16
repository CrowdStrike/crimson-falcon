# Falcon::DetectsapiAlertQueryResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaspecError&gt;**](MsaspecError.md) |  | [optional] |
| **meta** | [**MsaspecMetaInfo**](MsaspecMetaInfo.md) |  |  |
| **resources** | **Array&lt;String&gt;** | Array of the Alerts requested |  |

## Example

```ruby
require 'crimson-falcon'

instance = Falcon::DetectsapiAlertQueryResponse.new(
  errors: null,
  meta: null,
  resources: null
)
```

