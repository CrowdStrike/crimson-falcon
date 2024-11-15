# Falcon::DetectsapiAlertQueryResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;MsaAPIError&gt;**](MsaAPIError.md) |  | [optional] |
| **meta** | [**MsaMetaInfo**](MsaMetaInfo.md) |  |  |
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

